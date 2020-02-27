/*Jesse Holland
February 24, 2020
solution to kattis problem FizzBuzz
*/

#include <stdio.h>
#include <string.h>
#include <assert.h>

void answer(int i, int X, int Y, char *str){
  if(i%X==0.0 && i%Y==0.0)
      strcpy(str, "FizzBuzz\0");
      //return "FizzBuzz";
  else if(i%X==0.0)
      strcpy(str, "Fizz");
      //return "Fizz";
  else if(i%Y==0.0)
      strcpy(str, "Buzz");
      //return "Buzz";
  else{
      sprintf(str, "%d", i);
      //return str;
  }
}

void solve(){
  int X, Y, N;
  scanf("%d%d%d", &X, &Y, &N);
  for(int i=1;i<=N;i++){
      char str[20];
      answer(i, X, Y, str);
      printf("%s\n", str);
  }
}

void test(){//test cases
    char str[20];
    answer(1, 2, 3, str);
    assert(!strncmp(str, "1", 1));
    answer(6, 2, 3, str);
    assert(!strncmp(str, "FizzBuzz", 8));
    answer(2, 2, 3, str);
    assert(!strncmp(str, "Fizz", 4));
    printf("All test cases passed\n");
}

int main(int argc, char* argv[]) {
    if(argc > 1 && strncmp(argv[1], "test", 4) == 0)
        test();//run automated testing
    else
        solve();
    return 0;
}

/*void test(){
    char str[20];
    answer(1, 2, 3, str);
    int res = strncmp(str, "1", 1);
    assert(res = 0);
    answer(6, 2, 3, str);
    int res = strncmp(str, "FizzBuzz", 8);
    assert(res = 0);
    printf("All test cases passed\n");
    //printf("\nValue returned by strcmp() is:  %d\n" , res);
}*/
