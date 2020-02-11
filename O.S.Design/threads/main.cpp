#include <iostream>
#include "threads.h"

using namespace std;

void main1(int whoami) {
  while (true) {
    cout << "Main 1 says Hello" << endl;
    shareCPU(whoami);
  }
}

void main2(int whoami) {
  while (true) {
    cout << "Main 2 says Hello" << endl;
    shareCPU(whoami);
  }
}

int main() { 
  startThread(main1);
  startThread(main2);
  return 0;
}