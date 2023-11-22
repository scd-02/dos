pid_t c3 = vfork();

            // if (c3 == 0)
            // {
            //     printf("parent id: %d child id: %d\n", getppid(), getpid());
            //     execlp("cat", "cat", "file2.txt", NULL);
            //     _exit(0);
            // }
            // else
            // {
            //     wait(NULL);
            // }