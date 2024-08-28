import os
import onnx
import torch
from qonnx.core.modelwrapper import ModelWrapper

# Define the path to your model
model_dir = "./model_dir/"  # Adjust this to your actual model directory


# Load the model using ModelWrapper
model_for_sim = ModelWrapper(model_dir + "gesture.onnx")


# Inspect the model's input and output tensors
finnonnx_in_tensor_name = model_for_sim.graph.input[0].name
finnonnx_out_tensor_name = model_for_sim.graph.output[0].name

print(f"Input tensor name: {finnonnx_in_tensor_name}")
print(f"Output tensor name: {finnonnx_out_tensor_name}")

# Check tensor shapes and data types
finnonnx_model_in_shape = model_for_sim.get_tensor_shape(finnonnx_in_tensor_name)
finnonnx_model_out_shape = model_for_sim.get_tensor_shape(finnonnx_out_tensor_name)
finnonnx_model_in_dt = model_for_sim.get_tensor_datatype(finnonnx_in_tensor_name)
finnonnx_model_out_dt = model_for_sim.get_tensor_datatype(finnonnx_out_tensor_name)

print(f"Input tensor shape: {finnonnx_model_in_shape}")
print(f"Output tensor shape: {finnonnx_model_out_shape}")
print(f"Input tensor datatype: {finnonnx_model_in_dt}")
print(f"Output tensor datatype: {finnonnx_model_out_dt}")


from qonnx.transformation.general import GiveReadableTensorNames, GiveUniqueNodeNames, RemoveStaticGraphInputs
from qonnx.transformation.infer_shapes import InferShapes
from qonnx.transformation.infer_datatypes import InferDataTypes
from qonnx.transformation.fold_constants import FoldConstants

# Apply transformations
model_for_sim = model_for_sim.transform(InferShapes())
model_for_sim = model_for_sim.transform(FoldConstants())
model_for_sim = model_for_sim.transform(GiveUniqueNodeNames())
model_for_sim = model_for_sim.transform(GiveReadableTensorNames())
model_for_sim = model_for_sim.transform(InferDataTypes())
model_for_sim = model_for_sim.transform(RemoveStaticGraphInputs())

# Save the transformed model for verification
model_for_sim.save(model_dir + "gesture-verification.onnx")


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

# # Reshape input data for Conv2d
# X_train = X_train.reshape(X_train.shape[0], 1, X_train.shape[2], 1)  # [batch_size, channels, height, width]
# X_test = X_test.reshape(X_test.shape[0], 1, X_test.shape[2], 1)
# X_hidden = X_hidden.reshape(X_hidden.shape[0], 1, X_hidden.shape[2], 1)

# Check the shapes
print(X_train.shape)
print(X_test.shape)
print(X_hidden.shape)
print(y_train.shape)
print(y_test.shape)
print(y_hidden.shape)

print(label_encoder.classes_)


import numpy as np
import torch

# Assuming hidden data is already loaded and reshaped as X_hidden and y_hidden
input_tensor_hidden = torch.tensor(X_hidden, dtype=torch.float32)

# Move the data to the appropriate device (CPU/GPU)
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
input_tensor_hidden = input_tensor_hidden.to(device)

print(f"Hidden data tensor shape: {input_tensor_hidden.shape}")


import finn.core.onnx_exec as oxe

# Function to run inference with the Brevitas model
def inference_with_brevitas(model, input_tensor):
    model.eval()
    with torch.no_grad():
        brevitas_output = model(input_tensor)
        return brevitas_output.cpu().numpy()

# Function to run inference with the FINN-ONNX model
def inference_with_finn_onnx(model, input_tensor):
    finnonnx_in_tensor_name = model.graph.input[0].name
    input_dict = {finnonnx_in_tensor_name: input_tensor.cpu().numpy()}
    output_dict = oxe.execute_onnx(model, input_dict)
    finn_output = output_dict[model.graph.output[0].name]
    return finn_output

# Run verification
ok = 0
nok = 0
n_verification_inputs = input_tensor_hidden.shape[0]

model = ModelWrapper(model_dir + "gesture.onnx")

for i in range(n_verification_inputs):
    current_inp = input_tensor_hidden[i:i+1]
    
    # Run inference with Brevitas
    brevitas_out = inference_with_finn_onnx(model, current_inp)
    
    # Run inference with FINN-ONNX
    finn_out = inference_with_finn_onnx(model_for_sim, current_inp)
    
    print("bre:", brevitas_out)
    print("finn:", finn_out)
    
    
    # Compare outputs (consider a tolerance for floating-point comparisons)
    if np.allclose(brevitas_out, finn_out, atol=1e-6):
        ok += 1
    else:
        nok += 1
        
    print("ok:", ok)
    print("nok:", nok)

print(f"Verification results on hidden data: {ok} correct, {nok} incorrect")
