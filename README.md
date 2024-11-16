# Gesture-AI
All the relevant code needed is in gesture-notebook-tensorflow.ipynb

It will allow the usage of GPU for training if one is available.

The first part of the gesture-notebook processes the data in the /data directory and does the appropriate data augmentation on the training set without affecting the validation and hidden datasets. The appropriate scaling using minmaxscaler is then used before saving all the processed data in the /processed directory such that training can be done easily without performing pre-processing all the time.


The second part of the gesture-notebook contains multiple different models that were tried including Dense networks, 1DCNN, 2DCNN, RNN(LSTM) and more.

The best approach found was 1DCNN, and hence the hyperparameterisation focuses on that aspect to determine the best performing model for the dataset.

Hidden dataset can then be used to find the confusion matrix and hidden accuracy.

The third part of the gesture-notebook contains code that saves the model created and also generate the core.h, core.cpp and weights.h files. These are important for the creation of an IP block using HLS with vitis.

The code provided will help generate any customized 1DCNN model into a viable HLS synthesizable C++ code. However it only supports some types of layers and certain orders of layers. Namely it supports the culmination of a 1DCNN layers with optional Batch normalization and maxpooling layers. It also supports Dense layers and the Batch normalization for them. Finally it supports the Relu and the Softmax activation functions. With softmax being supported for the final output layer.

The last cell of the notebook will help to pick random samples from the hidden dataset to get the output from the model, which will generate a test_arrays.h file which can be used to test and validate the HLS code generated in vitis.