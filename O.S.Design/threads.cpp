#include <iostream>

using namespace std;

typedef void (*funPtr)(int);

//create own stack structure


void startThread(funPtr ptr){//should be similar to rewriting pthread; might need to change funPtr to void * 
  // To be completed by student
}

void shareCPU(int thread) {//should be similar to rewriting yield; I think i can just swap which stack it is pointing to i.e. swap main1 and main2 address?
  // To be completed by student; possibly use gdb to find memory addresses; use assembly to ctually switch what needs to be stored to "load up save"
}

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