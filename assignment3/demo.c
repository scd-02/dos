#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
int main(){

	if(vfork() == 0)
		printf("1");
	else{
		printf("2");	
		
	}
	printf("3");
	
	return 0;	
	
}
