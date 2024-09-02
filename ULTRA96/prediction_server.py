from pynq import Overlay, allocate
import numpy as np
import pandas as pd
from sklearn.preprocessing import LabelEncoder
import time
from pynq import PL 

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

    def predict(self, input_data):
        # Load input data into the input stream
        for i in range(120):
            self.input_stream[i] = input_data[i]

        # Start DMA transfer
        self.dma_send.transfer(self.input_stream)
        self.dma_send.wait()
        
        
        self.dma_recv.transfer(self.output_stream)
        # Wait for the DMA transfers to complete
        self.dma_recv.wait()

        # Print output stream data for debugging
        print("Output Stream Data:")
        print(self.output_stream)

        # Extract action and confidence from the output stream
        
        action = 0
        confidence = self.output_stream[0]
        
        for i in range(20):
            if confidence < self.output_stream[i]:
                confidence = self.output_stream[i]
                action = i
        
        return action, confidence

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
X_hidden = X_hidden.reshape(X_hidden.shape[0], X_hidden.shape[1], 1)

print(X_hidden.shape)

# Initialize classifier
classifier = ActionClassifier()
print("starting classifier")

# Initialize counters for accuracy calculation
correct_predictions = 0
total_predictions = len(X_hidden)

# Iterate through the entire dataset
for i in range(total_predictions):
    input_data = X_hidden[i].flatten()
    expected_class = y_hidden[i]
    
    # Get prediction from the hardware
    predicted_class, confidence = classifier.predict(input_data)
    print(f"predicted_class: {predicted_class}, expected: {expected_class}, confidence: {confidence}")
    
    # Check if the prediction is correct
    if predicted_class == expected_class:
        correct_predictions += 1

# Calculate accuracy
accuracy = correct_predictions / total_predictions
print(f"Model accuracy on hidden dataset: {accuracy * 100:.2f}%")
