import math
import os
import sys
from datetime import timedelta

import requests

print('hello')

# Python program for implementation of MergeSort 
def mergeSort(arr): 
    if len(arr) >1: 
        mid = len(arr)//2 #Finding the mid of the array 
        L = arr[:mid] # Dividing the array elements  
        R = arr[mid:] # into 2 halves 
  
        mergeSort(L) # Sorting the first half 
        mergeSort(R) # Sorting the second half 
  
        i = j = k = 0
          
        # Copy data to temp arrays L[] and R[] 
        while i < len(L) and j < len(R): 
            if L[i] < R[j]: 
                arr[k] = L[i] 
                i+=1
            else: 
                arr[k] = R[j] 
                j+=1
            k+=1
          
        # Checking if any element was left 
        while i < len(L): 
            arr[k] = L[i] 
            i+=1
            k+=1
          
        while j < len(R): 
            arr[k] = R[j] 
            j+=1
            k+=1

def binary_search(arr, val, start, end): 
    # we need to distinugish whether we should insert 
    # before or after the left boundary. 
    # imagine [0] is the last step of the binary search 
    # and we need to decide where to insert -1 
    if start == end: 
        if arr[start] > val: 
            return start 
        else: 
            return start+1
  
    # this occurs if we are moving beyond left's boundary 
    # meaning the left boundary is the least position to 
    # find a number greater than val 
    if start > end: 
        return start 
  
    mid = (start+end)/2
    if arr[mid] < val: 
        return binary_search(arr, val, mid+1, end) 
    elif arr[mid] > val: 
        return binary_search(arr, val, start, mid-1) 
    else: 
        return mid 
  
def insertion_sort(arr): 
    for i in xrange(1, len(arr)): 
        val = arr[i] 
        j = binary_search(arr, val, 0, i-1) 
        arr = arr[:j] + [val] + arr[j:i] + arr[i+1:] 
    return arr 

print('hello')

def juul(user, device, pod):
    empty = False
    rip = False
    pod = 10
    #loops here
    while pod != empty:
        user = 'happy'
        rip = True
        device = 'charged'
        pod -= 1
        if pod == 0:
            empty = True
    print('hello')
    print('testing everything')


def newestFunctionPart5():
    print('hello there')
    #comment
