import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
from sklearn.metrics import confusion_matrix
import matplotlib.pyplot as plt
import seaborn as sns
import setuptools.dist


# Load the processed train and test data
train_data = pd.read_csv("./processed/processed_train_gesture_data.csv")
test_data = pd.read_csv("./processed/processed_test_gesture_data.csv")
hidden_data = pd.read_csv("./processed/processed_hidden_gesture_data.csv")

def str_to_list(s):
    return [float(x.strip()) for x in s.strip('[]').split(',')]

X_train = np.array([str_to_list(row['x']) + str_to_list(row['y']) + str_to_list(row['z']) 
                    for _, row in train_data.iterrows()], dtype=np.float32)
X_train = X_train[:, np.newaxis, :, np.newaxis]  # Adding new axes to directly form (batch_size, 1, sequence_length, 1)

X_test = np.array([str_to_list(row['x']) + str_to_list(row['y']) + str_to_list(row['z']) 
                    for _, row in test_data.iterrows()], dtype=np.float32)
X_test = X_test[:, np.newaxis, :, np.newaxis]

X_hidden = np.array([str_to_list(row['x']) + str_to_list(row['y']) + str_to_list(row['z']) 
                    for _, row in hidden_data.iterrows()], dtype=np.float32)
X_hidden = X_hidden[:, np.newaxis, :, np.newaxis]

# Prepare the labels for training
label_encoder = LabelEncoder()
y_train = label_encoder.fit_transform(train_data['gesture'])
y_test = label_encoder.transform(test_data['gesture'])
y_hidden = label_encoder.transform(hidden_data['gesture'])

# X_train = X_train.reshape(X_train.shape[0], 1, X_train.shape[1])
# X_test = X_test.reshape(X_test.shape[0], 1, X_test.shape[1])
# X_hidden = X_hidden.reshape(X_hidden.shape[0], 1, X_hidden.shape[1])

# Check the shapes
print(X_train.shape)
print(X_test.shape)
print(X_hidden.shape)
print(y_train.shape)
print(y_test.shape)
print(y_hidden.shape)

print(label_encoder.classes_)


import torch
import onnx
import os
 
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print("Target device: " + str(device))


from brevitas.nn import QuantConv2d, QuantReLU, QuantLinear, QuantMaxPool2d, QuantDropout
from brevitas.quant import Int8WeightPerTensorFixedPoint, Int8ActPerTensorFixedPoint
import torch.nn as nn

# Model parameters
input_channels = 1
sequence_length = X_train.shape[2]  # Updated to match the reshaped height
conv1_out_channels = 16
conv2_out_channels = 16
fc1_out_features = 16
fc2_out_features = 16
weight_bit_width = 8
act_bit_width = 8
num_classes = len(label_encoder.classes_)

# Define the model
model = nn.Sequential(
    # First Conv2D layer equivalent
    QuantConv2d(
        in_channels=input_channels, out_channels=conv1_out_channels, kernel_size=(3, 1), stride=(1, 1), padding=(1, 0), 
        weight_quant=Int8WeightPerTensorFixedPoint, bias=True, weight_bit_width=weight_bit_width),
    nn.BatchNorm2d(conv1_out_channels),
    QuantReLU(bit_width=act_bit_width),
    QuantMaxPool2d(kernel_size=(2, 1), stride=(2, 1)),

    # Second Conv2D layer equivalent
    QuantConv2d(
        in_channels=conv1_out_channels, out_channels=conv2_out_channels, kernel_size=(3, 1), stride=(1, 1), padding=(1, 0), 
        weight_quant=Int8WeightPerTensorFixedPoint, bias=True, weight_bit_width=weight_bit_width),
    nn.BatchNorm2d(conv2_out_channels),
    QuantReLU(bit_width=act_bit_width),
    QuantMaxPool2d(kernel_size=(2, 1), stride=(2, 1)),

    # Flatten layer
    nn.Flatten(),
    
    # First Dense layer
    QuantLinear(
        in_features=conv2_out_channels * (sequence_length // 4), out_features=fc1_out_features, 
        weight_quant=Int8WeightPerTensorFixedPoint, bias=True, weight_bit_width=weight_bit_width),
    nn.BatchNorm1d(fc1_out_features),
    QuantReLU(bit_width=act_bit_width),

    # Second Dense layer
    QuantLinear(
        in_features=fc1_out_features, out_features=fc2_out_features, 
        weight_quant=Int8WeightPerTensorFixedPoint, bias=True, weight_bit_width=weight_bit_width),
    nn.BatchNorm1d(fc2_out_features),
    QuantReLU(bit_width=act_bit_width),

    QuantDropout(p=0.2),
    
    # Output layer
    QuantLinear(
        in_features=fc2_out_features, out_features=num_classes, 
        weight_quant=Int8WeightPerTensorFixedPoint, bias=True, weight_bit_width=weight_bit_width),
    nn.Softmax(dim=1)
)

# Move model to the appropriate device (CPU/GPU)
model.to(device)


from torch.utils.data import DataLoader, TensorDataset

# Reshape input data for Conv2d
# X_train = X_train.reshape(X_train.shape[0], 1, X_train.shape[2], 1)  # [batch_size, channels, height, width]
# X_test = X_test.reshape(X_test.shape[0], 1, X_test.shape[2], 1)
# X_hidden = X_hidden.reshape(X_hidden.shape[0], 1, X_hidden.shape[2], 1)

# Convert numpy arrays to tensors
X_train_tensor = torch.tensor(X_train, dtype=torch.float32).to(device)
X_test_tensor = torch.tensor(X_test, dtype=torch.float32).to(device)
X_hidden_tensor = torch.tensor(X_hidden, dtype=torch.float32).to(device)


# Convert numpy arrays to tensors
y_train_tensor = torch.tensor(y_train, dtype=torch.long).to(device)
y_test_tensor = torch.tensor(y_test, dtype=torch.long).to(device)
y_hidden_tensor = torch.tensor(y_hidden, dtype=torch.long).to(device)


# Create PyTorch datasets
train_dataset = TensorDataset(X_train_tensor, y_train_tensor)
test_dataset = TensorDataset(X_test_tensor, y_test_tensor)
hidden_dataset = TensorDataset(X_hidden_tensor, y_hidden_tensor)

print(X_train_tensor.shape)
print(y_train_tensor.shape)
print(X_test_tensor.shape)

# Create PyTorch dataloaders
train_loader = DataLoader(train_dataset, batch_size=32, shuffle=True)
test_loader = DataLoader(test_dataset, batch_size=32, shuffle=False)
hidden_loader = DataLoader(hidden_dataset, batch_size=32, shuffle=False)


import torch.optim as optim
import torch.nn as nn
from sklearn.metrics import accuracy_score
import time

def train(model, train_loader, optimizer, criterion):
    model.train()
    running_loss = 0.0
    correct = 0
    total = 0

    for data, target in train_loader:
        optimizer.zero_grad()
        output = model(data)
        loss = criterion(output, target)
        loss.backward()
        optimizer.step()
        running_loss += loss.item() * data.size(0)
        _, predicted = torch.max(output.data, 1)
        total += target.size(0)
        correct += (predicted == target).sum().item()

    epoch_loss = running_loss / len(train_loader.dataset)
    epoch_accuracy = 100 * correct / total
    return epoch_loss, epoch_accuracy

def test(model, test_loader, criterion):
    model.eval()
    running_loss = 0.0
    correct = 0
    total = 0
    with torch.no_grad():
        for data, target in test_loader:
            output = model(data)
            loss = criterion(output, target)
            running_loss += loss.item() * data.size(0)
            _, predicted = torch.max(output.data, 1)
            total += target.size(0)
            correct += (predicted == target).sum().item()

    epoch_loss = running_loss / len(test_loader.dataset)
    epoch_accuracy = 100 * correct / total
    return epoch_loss, epoch_accuracy

import torch

class EarlyStopping:
    def __init__(self, patience=5, verbose=False, delta=0, path='checkpoint.pt'):
        self.patience = patience
        self.verbose = verbose
        self.delta = delta
        self.path = path
        self.counter = 0
        self.best_score = None
        self.early_stop = False
        self.val_loss_min = np.Inf

    def __call__(self, val_loss, model):
        score = -val_loss
        if self.best_score is None:
            self.best_score = score
            self.save_checkpoint(val_loss, model)
        elif score < self.best_score + self.delta:
            self.counter += 1
            if self.verbose:
                print(f'EarlyStopping counter: {self.counter} out of {self.patience}')
            if self.counter >= self.patience:
                self.early_stop = True
        else:
            self.best_score = score
            self.save_checkpoint(val_loss, model)
            self.counter = 0

    def save_checkpoint(self, val_loss, model):
        if self.verbose:
            print(f'Validation loss decreased ({self.val_loss_min:.6f} --> {val_loss:.6f}).  Saving model ...')
        torch.save(model.state_dict(), self.path)
        self.val_loss_min = val_loss
        
        
        import matplotlib.pyplot as plt
from sklearn.metrics import confusion_matrix, ConfusionMatrixDisplay, accuracy_score
import numpy as np

# Define training loop with loss and accuracy tracking
num_epochs = 50
lr = 0.001
l2_reg = 0.00001
criterion = nn.CrossEntropyLoss().to(device)
optimizer = optim.Adam(model.parameters(), lr=lr, weight_decay=l2_reg)

early_stopping = EarlyStopping(patience=5, verbose=True)

train_losses = []
train_accuracies = []
val_losses = []
val_accuracies = []

for epoch in range(num_epochs):
    start_time = time.time()
    
    train_loss, train_acc = train(model, train_loader, optimizer, criterion)
    val_loss, val_acc = test(model, test_loader, criterion)
    
    train_losses.append(train_loss)
    train_accuracies.append(train_acc)
    val_losses.append(val_loss)
    val_accuracies.append(val_acc)
    
    epoch_time = time.time() - start_time
    
    print(f"Epoch {epoch+1}/{num_epochs}")
    print(f"{len(train_loader)}/{len(train_loader)} - {epoch_time:.0f}s {train_acc:.4f} - loss: {train_loss:.4f} - val_loss: {val_loss:.4f} - val_acc: {val_acc:.4f}")
    
    early_stopping(val_loss, model)
    
    if early_stopping.early_stop:
        print("Early stopping")
        break

# Load the last checkpoint with the best model
model.load_state_dict(torch.load('checkpoint.pt'))

# After training, test on hidden data
model.eval()
y_true_hidden = []
y_pred_hidden = []

with torch.no_grad():
    for data, target in hidden_loader:
        output = model(data)
        pred = output.argmax(dim=1, keepdim=True)
        y_true_hidden.extend(target.cpu().numpy())
        y_pred_hidden.extend(pred.cpu().numpy())

# Calculate overall accuracy on hidden data
hidden_accuracy = accuracy_score(y_true_hidden, y_pred_hidden)
print(f"Accuracy on hidden data: {hidden_accuracy:.4f}")

# Confusion Matrix
cm = confusion_matrix(y_true_hidden, y_pred_hidden)
cm_display = ConfusionMatrixDisplay(confusion_matrix=cm, display_labels=label_encoder.classes_)
cm_display.plot()
plt.title("Confusion Matrix on Hidden Data")
plt.show()

# Plot Loss and Validation Accuracy
epochs_range = range(1, len(train_losses) + 1)

plt.figure(figsize=(12, 4))

# Loss curve
plt.subplot(1, 2, 1)
plt.plot(epochs_range, train_losses, label='Training Loss')
plt.plot(epochs_range, val_losses, label='Validation Loss')
plt.xlabel('Epochs')
plt.ylabel('Loss')
plt.title('Training and Validation Loss Curve')
plt.legend()

# Validation accuracy curve
plt.subplot(1, 2, 2)
plt.plot(epochs_range, train_accuracies, label='Training Accuracy')
plt.plot(epochs_range, val_accuracies, label='Validation Accuracy')
plt.xlabel('Epochs')
plt.ylabel('Accuracy')
plt.title('Training and Validation Accuracy Curve')
plt.legend()

plt.show()


from brevitas.export import export_qonnx
from qonnx.util.cleanup import cleanup as qonnx_cleanup
from qonnx.core.modelwrapper import ModelWrapper
from qonnx.core.datatype import DataType
from finn.transformation.qonnx.convert_qonnx_to_finn import ConvertQONNXtoFINN

ready_model_filename = "./model_dir/gesture.onnx"

input_shape = (1, 1, sequence_length, 1)  # Adjust according to your input size
input_a = np.random.uniform(-1, 1, size=input_shape).astype(np.float32)
input_t = torch.from_numpy(input_a)


# Move the model to CPU before surgery
model = model.cpu()

# Move to CPU before export
model.cpu()


# save the weights and biases and the label encoder
torch.save(model.state_dict(), "./model_dir/gesture.pth")
torch.save(label_encoder, "./model_dir/label_encoder.pth")

# look through model   

# Dummy input to trace through the model
dummy_input = np.random.uniform(-1, 1, size=(1, 1, sequence_length, 1)).astype(np.float32)
dummy_tensor = torch.from_numpy(dummy_input)

model.eval()
with torch.no_grad():
    # Trace through the model and print shapes
    for i, layer in enumerate(model):
        dummy_tensor = layer(dummy_tensor)
        print(f"Layer {i}: {layer.__class__.__name__}, Output Shape: {dummy_tensor.shape}")



# Export to ONNX
export_qonnx(
    model, export_path=ready_model_filename, input_t=input_t
)

# Clean-up
qonnx_cleanup(ready_model_filename, out_file=ready_model_filename)

# ModelWrapper
model = ModelWrapper(ready_model_filename)

# Set input datatype to FLOAT32
model.set_tensor_datatype(model.graph.input[0].name, DataType["FLOAT32"])
model = model.transform(ConvertQONNXtoFINN())
model.save(ready_model_filename)

print("Model saved to %s" % ready_model_filename)

