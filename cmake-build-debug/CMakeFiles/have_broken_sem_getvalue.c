#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <semaphore.h>
#include <sys/stat.h>

int main(void){
  sem_t *a = sem_open("/autocftw", O_CREAT, S_IRUSR|S_IWUSR, 0);
  int count;
  int res;
  if(a==SEM_FAILED){
    perror("sem_open");
    return 1;

  }
  res = sem_getvalue(a, &count);
  sem_close(a);
  sem_unlink("/autocftw");
  return res==-1 ? 1 : 0;
}
