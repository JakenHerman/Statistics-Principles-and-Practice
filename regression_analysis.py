#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jan 18 22:30:48 2021

@author: jakenherman
"""
import numpy as np

def sum_of_squares (j):
    sum = 0
    for i in range(len(j)):
        sum = sum + ((i - np.mean(j))**2)
    return sum

def sum_of_product (i, j):
    sum = 0
    for k in range(len(i)):
        sum = sum + ((i[k] - np.mean(i))*(j[k] - np.mean(j)))
    return sum

def least_squares_estimator_of_beta1 (x, y):
  return sum_of_product(x, y) / sum_of_squares(x)

def least_squares_estimator_of_beta0 (x, y):
    return np.mean(y) - (least_squares_estimator_of_beta1(x, y) * np.mean(x))

def residuals (x, y):
    return y - least_squares_estimator_of_beta0(x, y) - (least_squares_estimator_of_beta1(x, y) * x)

def residual_sum_of_squares (x, y):
    sum = 0
    for i in residuals(x, y):
        sum = sum + i**2
    return sum
