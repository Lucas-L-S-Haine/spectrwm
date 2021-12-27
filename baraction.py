#!/usr/bin/env python

# https://psutil.readthedocs.io/en/latest/
import os
import psutil
import time
# Useful modules for listing windows
# Also check out "man xprop"
# import Xlib
# import Xlib.display

while os.environ["DESKTOP_SESSION"] == 'spectrwm':
    # Memory usage:
    memory = psutil.virtual_memory()[2]
    # Current timestamp:
    current_time = time.strftime("%A, %d/%m/%Y %R")
    # Parse and print result:
    print("RAM: %d%s | %s" %(memory, '%', current_time))
