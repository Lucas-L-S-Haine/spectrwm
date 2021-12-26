#!/usr/bin/env python

# https://psutil.readthedocs.io/en/latest/
import os
import psutil
import time

while os.environ["DESKTOP_SESSION"] == 'spectrwm':
    memory = psutil.virtual_memory()[2]
    current_time = time.strftime("%A, %d/%m/%Y %R")
    print("RAM: %d%s | %s" %(memory, '%', current_time))
