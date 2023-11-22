#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <malloc.h>

void fib(int *a, int n){
    for(int i = 2; i <= n; i++){
        a[i] = a[i - 1] + a[i - 2];
    }
}

int isPrime(int n){

    for(int i = 2; i < n / 2; i++){
        if(n % i == 0) return 0;
    }
    return 1;
}

int main()
{
    int n = 15;

    int *arr = (int*)malloc((n + 1) * sizeof(int));
    arr[0] = 0; arr[1]= 1;

    pid_t c1 = vfork();

    if(c1 == 0){
        fib(arr, n);
        _exit(0);
    }else{
        wait(NULL);

        for(int i = 0; i <= n; i++){
            printf("%d ", arr[i]);
        }

        printf("\n");

        for(int i = 2; i <= n; i++){
            if(isPrime(arr[i])){
                printf("%d %d\n", i, arr[i]);
            }
        }
    }
    return 0;
}
