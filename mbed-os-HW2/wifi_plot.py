#!/usr/bin/env python3
import socket
import numpy as np
import json
import time
import random
import sys
import json
import matplotlib.pyplot as plot
# HOST = '192.168.1.2' # IP address 
# PORT = 2136 # Port to listen on (use ports > 1023)
# with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
#     s.bind((HOST, PORT))
#     s.listen(0)
#     conn, addr = s.accept()
#     with conn:
#         print('Connected by', addr)
#     while True:
#         data = conn.recv(65536).decode('utf-8')
#         print('Received from socket server : ', data)

HOST, PORT = '192.168.1.106', 8002
serverSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serverSocket.bind((HOST, PORT))
serverSocket.listen(0)
print("Starting server at: ", (HOST, PORT))
while True:
    print('Waiting for new client')
    Client, Addr = serverSocket.accept()
    print('Connected by', Addr)
    while True:
        try:
            Client.settimeout(5)
            data = Client.recv(4096).decode("utf-8")
            print('Received from socket server : ', data)
            if (data.count('{') != 1):
                # Incomplete data are received.
                choose = 0
                buffer_data = data.split('}')
                while buffer_data[choose][0] != '{':
                    choose += 1
                data = buffer_data[choose] + '}'

            obj = json.loads(data)
            t = obj['s']
            plot.scatter(t, obj['z'], c = 'red') # x, y, z, gx, gy, gz
            plot.xlabel("sample num")
            plot.ylabel("mg")
            plot.title("Accelero Z")
            plot.pause(0.0001)

        except:
            Client.close()
            plot.close()
            print('Timeout: client closed!')
            break