#include <iostream>

using namespace std;

int foo(int count){
    count++;
    //cout << count << endl;
    foo(count);
    return count;
}

int main(){
    int count = 0;
    try{
        cout << "yay" << endl;
        count = foo(count);
    }
    catch(int){
    cout << count << endl;
    cout << "hi" << endl;
    }
    return 0;
}