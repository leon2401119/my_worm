#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
int main(){
	while(1)
		system("ping -s 1500 127.0.0.1");
	return 0;
}
