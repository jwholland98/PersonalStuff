/*Jesse Holland
February 28, 2020
solution to kattis problem Sum Kind of Problem
*/

#include <stdio.h>
#include <string.h>
#include <math.h>
#include <assert.h>

void answer(int N, int* arr){//uses formula to get answer to problem and puts it in arr
    arr[0] = N*(N+1)/2;
    arr[1] = pow(N, 2);
    arr[2] = N*(N+1);
}

void solve(){
    int P, K, N;
    scanf("%d", &P);
    for(int i=0;i<P;i++){
        scanf("%d%d", &K, &N);
        int arr[3];
        answer(N, arr);
        printf("%d %d %d %d\n",K , arr[0], arr[1], arr[2]);
    }
}

void test(){//test cases
    int arr[3];
    answer(5, arr);
    assert(arr[0] == 15 && arr[1] == 25 && arr[2] == 30);
    answer(2, arr);
    assert(arr[0] == 3 && arr[1] == 4 && arr[2] == 6);
    answer(7, arr);
    assert(arr[0] == 28 && arr[1] == 49 && arr[2] == 56);
    printf("All test cases passed!\n");
}

int main(int argc, char* argv[]) {
    if(argc > 1 && strncmp(argv[1], "test", 4) == 0)
        test();//run automated testing
    else
        solve();
    return 0;
}
