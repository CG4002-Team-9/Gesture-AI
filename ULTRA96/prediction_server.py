from pynq import Overlay, allocate
import numpy as np

class ActionClassifier():
    def __init__(self):
        self.ol = Overlay('/home/xilinx/ai/neuralnetwork.bit')
        self.dma = self.ol.axi_dma_0
        self.nn = self.ol.gesture_model_0
        self.nn.write(0x00, 0x81)  # start and auto restart
        self.dma_send = self.dma.sendchannel
        self.dma_recv = self.dma.recvchannel
        self.input_stream = allocate(shape=(120, ), dtype='int32')
        self.output_stream = allocate(shape=(2, ), dtype='int32')  # Updated for two output values (gesture and confidence)

    def predict(self, input_data):
        for i in range(120):
            self.input_stream[i] = input_data[i]
        self.dma_send.transfer(self.input_stream)
        self.dma_recv.transfer(self.output_stream)
        self.dma_send.wait()
        self.dma_recv.wait()
        action = self.output_stream[0]
        confidence = self.output_stream[1]
        return action, confidence