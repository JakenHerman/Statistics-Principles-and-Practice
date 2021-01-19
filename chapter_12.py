#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jan 18 22:41:32 2021

@author: jakenherman
"""
import regression_analysis as ra
import numpy as np
import matplotlib.pyplot as plt

"""
 Example 12
"""
fig, axs = plt.subplots(1, 2)

# example 12 a
distance = [3,6,10.5,12,15,18,21,24,27]
count = [1845,561,145,127,109,181,72,18,13]
axs[0].scatter(distance, count)

# example 12 b
distance = np.log10(distance)
count = np.log10(count)
axs[1].scatter(distance, count)

# example 12 c
b1 = ra.sum_of_product(distance,count) / ra.sum_of_squares(distance)
b0 = np.mean(count) - (b1 * np.mean(distance))
yhat = b0 + (b1 * distance)                    
axs[1].plot(distance, yhat)