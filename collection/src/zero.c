int __getMax__(int arr[], int n) {
    int max = arr[0];
    for (int i = 1; i < n; i++) {
        if (arr[i] > max)
            max = arr[i];
    }
    return max;
}

int __getMin__(int arr[], int n){
    int max = arr[0];
    for (int i = 1; i < n; i++) {
        if (arr[i] > max)
            max = arr[i];
    }
    return max;
}

int __modulo2__(int a){
    return a & 1;
}

int __nearestEven__(int a){
    return ~-(a | 1);
}

int __incr__(int a){
    return -~a;
}

int __decr__(int a){
    return ~-a;
}