#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int  isPrime(int num){
   if(num <= 1) {
	return 0;
    }
   for (int i = 2; i<num; i ++){
	if(num % i == 0){
		return 0;
	}
    }
   return 1;
}

void getPrime(int begining,int ending){

    int fd = open("prime_numbers.txt", O_CREATE | O_RDWR);
    if(fd != -1)
    {
        unlink("prime_numbers.txt");
        fd = open("prime_numbers.txt", O_CREATE | O_RDWR);
    }

    char buf[32];
    for(int i = begining; i <= ending; i++)
    {
        if(isPrime(i))
        {
            int prime = i;
            int j = 0;
            
            while(prime != 0)
            {
                buf[j++] = '0' + prime % 10;
                prime /= 10;
            }

            while (j-- >= 0)
            {
                write(fd, &buf[j], sizeof(char));
            }

            write(fd, " ", sizeof(char));
        }
    }
    write(fd, "\n", sizeof(char));
    close(fd);
}
    

int main(int argc, char *argv[])
{
  getPrime(atoi(argv[1]),atoi(argv[2]));
  exit();
}
