/* 
 * Copyright (c) 2025 Irfan Nazir
 * Licensed under the MIT License
 * See LICENSE file for details
 */

#ifndef ZERO_H
#define ZERO_H

static inline int __getMax__(int arr[], int n) {
    int max = arr[0];
    for (int i = 1; i < n; i++) {
        if (arr[i] > max)
            max = arr[i];
    }
    return max;
}

static inline int __getMin__(int arr[], int n){
    int max = arr[0];
    for (int i = 1; i < n; i++) {
        if (arr[i] < max)
            max = arr[i];
    }
    return max;
}

static inline int __modulo2__(int a){
    return a & 1;
}

static inline int __nearestEven__(int a){
    return ~-(a | 1);
}

static inline int __incr__(int a){
    return -~a;
}

static inline int __decr__(int a){
    return ~-a;
}

#endif // ZERO_H