from pynq import Overlay, allocate
import numpy as np
import pandas as pd
from sklearn.preprocessing import LabelEncoder
import time
from pynq import PL, get_rails, DataRecorder
import matplotlib.pyplot as plt

PL.reset()

folder_to_use = "./float_model/"

class ActionClassifier():
    def __init__(self):
        self.ol = Overlay(folder_to_use + 'design_1.bit')
        self.nn = self.ol.gesture_model_0
        print(self.nn.register_map)
        self.nn.write(0x0, 0x81)
        self.dma = self.ol.axi_dma_0
        self.dma_send = self.dma.sendchannel
        self.dma_recv = self.dma.recvchannel
        self.input_stream = allocate(shape=(120, ), dtype='float32')
        self.output_stream = allocate(shape=(20, ), dtype='float32')  # Updated for two output values (gesture and confidence)
        
        # Initialize power monitoring
        self.rails = get_rails()
        self.power_sensor = self.rails['PSINT_FP'].power
        self.recorder = DataRecorder(self.power_sensor)

    def predict(self, input_data):
        # Load input data into the input stream
        for i in range(120):
            self.input_stream[i] = input_data[i]

        # Start timing
        start_time = time.time()

        # Record power usage during inference
        with self.recorder.record(0.01):  # Sample every 10ms
            # Start DMA transfer
            self.dma_send.transfer(self.input_stream)
            self.dma_send.wait()

            self.dma_recv.transfer(self.output_stream)
            # Wait for the DMA transfers to complete
            self.dma_recv.wait()

        # End timing
        end_time = time.time()
        elapsed_time = end_time - start_time

        # Extract action and confidence from the output stream
        action = 0
        confidence = self.output_stream[0]
        
        for i in range(20):
            if confidence < self.output_stream[i]:
                confidence = self.output_stream[i]
                action = i

        return action, confidence, elapsed_time

# Load the processed hidden data
hidden_data = pd.read_csv("./data/processed_hidden_gesture_data.csv")

def str_to_list(s):
    return [float(x.strip()) for x in s.strip('[]').split(',')]

# Prepare the input data
X_hidden = np.array([str_to_list(row['x']) + str_to_list(row['y']) + str_to_list(row['z'])
                     for _, row in hidden_data.iterrows()], dtype=np.float32)

# Prepare the labels
label_encoder = LabelEncoder()
y_hidden = hidden_data['gesture']
print(y_hidden)

# Reshape input data to match the input shape expected by the 1D CNN
X_hidden = X_hidden.reshape(X_hidden.shape[0], X_
                            hidden.shape[1], 1)

print(X_hidden.shape)

# Initialize classifier
classifier = ActionClassifier()
print("starting classifier")

# Start recording power 0.5 seconds before the prediction loop
with classifier.recorder.record(0.01):
    time.sleep(0.5)

# Initialize counters and lists for accuracy and timing
correct_predictions = 0
total_predictions = len(X_hidden)
timing_list = []

# Iterate through the entire dataset
for i in range(total_predictions):
    input_data = X_hidden[i].flatten()
    expected_class = y_hidden[i]
    
    # Get prediction from the hardware
    predicted_class, confidence, elapsed_time = classifier.predict(input_data)
    print(f"predicted_class: {predicted_class}, expected: {expected_class}, confidence: {confidence}, time: {elapsed_time:.6f}s")
    
    # Track timing
    timing_list.append(elapsed_time)
    
    # Check if the prediction is correct
    if predicted_class == expected_class:
        correct_predictions += 1

# Wait 0.5 seconds after the prediction loop before stopping the recording
with classifier.recorder.record(0.01):
    time.sleep(0.5)

# Calculate accuracy
accuracy = correct_predictions / total_predictions
print(f"Model accuracy on hidden dataset: {accuracy * 100:.2f}%")

# Plot timing data
plt.figure(figsize=(10, 6))
plt.plot(timing_list, label='Prediction Time')
plt.axhline(y=np.mean(timing_list), color='r', linestyle='-', label='Mean')
plt.axhline(y=np.max(timing_list), color='g', linestyle='--', label='Max')
plt.axhline(y=np.min(timing_list), color='b', linestyle='--', label='Min')
plt.title('Prediction Time Per Inference')
plt.xlabel('Prediction Number')
plt.ylabel('Time (s)')
plt.legend()
plt.savefig(folder_to_use + "prediction_time_plot.png")
plt.show()

# Retrieve and save power usage data
power_data = classifier.recorder.frame
power_data.to_csv(folder_to_use + "power_usage_data.csv")
print(f"Power usage data saved to power_usage_data.csv")

# Load the power usage data and specify the first column as the timestamp
power_data = pd.read_csv(folder_to_use + "power_usage_data.csv", parse_dates=True, index_col=0)

# Rename the columns if necessary (for consistency)
power_data.columns = ['Mark', 'Power']

# Calculate mean, max, and min power usage
mean_power = power_data['Power'].mean()
max_power = power_data['Power'].max()
min_power = power_data['Power'].min()

# Plot power usage data
plt.figure(figsize=(10, 6))
plt.plot(power_data.index, power_data['Power'], label='Power Usage')

# Add lines for mean, max, and min power usage
plt.axhline(y=mean_power, color='r', linestyle='-', label=f'Mean: {mean_power:.3f} W')
plt.axhline(y=max_power, color='g', linestyle='--', label=f'Max: {max_power:.3f} W')
plt.axhline(y=min_power, color='b', linestyle='--', label=f'Min: {min_power:.3f} W')

# Annotate the mean, max, and min values on the graph
plt.text(power_data.index[-1], mean_power, f'{mean_power:.3f} W', color='r', ha='left', va='center')
plt.text(power_data.index[-1], max_power, f'{max_power:.3f} W', color='g', ha='left', va='center')
plt.text(power_data.index[-1], min_power, f'{min_power:.3f} W', color='b', ha='left', va='center')

plt.title('Power Usage Over Time During Inference')
plt.xlabel('Time (s)')
plt.ylabel('Power (W)')
plt.legend()
plt.savefig(folder_to_use + "power_usage_plot.png")
plt.show()
