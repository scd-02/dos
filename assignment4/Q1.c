#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>


int main(){
    
    {
        if (fork()){
            printf("Parent: %d\n",getpid());  
            printf("Waiting...\n");
            wait(NULL);
            printf("Child has completed its task.\n");
        }
        else{
            sleep(10);
            printf("Child: %d\n", getpid());
            while(1);
        }
        
    }

    return 0;
}
