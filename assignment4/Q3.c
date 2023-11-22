#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main()
{

    pid_t c1 = fork();

    if (c1 == 0)
    {
        printf("parent id: %d child id: %d\n", getppid(), getpid());
        execlp("cp", "cp", "file1.txt", "file2.txt", NULL);
    }
    else
    {
        wait(NULL);
        sleep(1);
        pid_t c2 = fork();

        if (c2 == 0)
        {
            printf("parent id: %d child id: %d\n", getppid(), getpid());
            execlp("cat", "cat", "file2.txt", NULL);
        }
        else
        {
            wait(NULL);
            sleep(1);
            pid_t c3 = fork();

            if (c3 == 0)
            {
                printf("parent id: %d child id: %d\n", getppid(), getpid());
                execlp("sort", "sort", "-r", "file2.txt", NULL);
            }
            else
            {
                sleep(1);
                wait(NULL);
            }
        }

        printf("Parent Process terminate.\n");
    }

    return 0;
}