#include <vector>
#include <cstdint>
#include <iostream>
#include "threads.h"

using namespace std;

/*startThread stores main thread, calls main1, where main1 calls shareCPU. shareCPU then switches threads back to main(wraparound on vector possibly)
 *from where it was stored at, then main calls startThread for main2 and the process repeats from there
*/

#define STACK_SIZE sizeof(uint8_t) * 100000

struct thread{
    uint64_t regs[10]; 
    uint8_t *stack;// unsigned char
};

static int currentThread = 0;
vector<thread> threads;

void initStack(uint8_t *stack){
    __asm__("pop %%r15  \n"//store stuff before address
            "pop %%r14  \n"//stores return address
            "mov %1, %%rsp  \n"//change stack pointer to point to start of newly created stack so it builds the frame itself
            "push %%r14     \n"//puts back on new stack
            "push %%r15     \n"
            :"=r" (stack) // %0: output
            :"r" (stack) // %1: input
            );
}

void saveState(uint64_t *regs){
    __asm__("mov %%rsp, 0(%0)  \n"
            "mov %%rbx, 8(%0) \n"
            "mov %%rcx, 16(%0) \n"
            "mov %%rdx, 24(%0) \n"
            "mov %%rsi, 32(%0) \n"
            "mov %%rdi, 40(%0) \n"
            "mov %%rbp, 48(%0) \n"
            "mov %%rax, 56(%0) \n"
            :"=r" (regs) // %0: output
            :"r" (regs) // %1: input
            );
}

void startThread(funPtr ptr){//functions as create and start thread
    //might need to add check to see if threads is empty as main thread needs to be saved and main1 thread need to be both created and started the first time
    if(threads.size()==0){
        thread newThread;
        //initialize stack:
        //newThread.stack = new uint8_t(STACK_SIZE);
        newThread.stack = (uint8_t *)malloc(STACK_SIZE)+STACK_SIZE;

        //save state and fix stack:
        initStack(newThread.stack);
        saveState(newThread.regs);

        //add to thread list
        threads.push_back(newThread);
    }
    thread newThread;
    newThread.stack = (uint8_t *)malloc(STACK_SIZE)+STACK_SIZE;
    initStack(newThread.stack);
    saveState(newThread.regs);
    threads.push_back(newThread);

    currentThread++;

    //start thread
    ptr(currentThread);
}

void switchState(uint8_t *stack, uint64_t *regs){
    __asm__("mov 0(%1), %%rsp  \n"
            "mov 8(%1), %%rbx  \n"
            "mov 16(%1), %%rcx \n"
            "mov 24(%1), %%rdx \n"
            "mov 32(%1), %%rsi \n"
            "mov 40(%1), %%rdi \n"
            "mov 48(%1), %%rbp \n"
            "mov 48(%1), %%rax \n"
            :"=r" (regs) // %0: output
            :"r" (regs) // %1: input
            );
}

void shareCPU(int &threadnum) { // use assembly to switch machine state
    //save current thread
    saveState(threads[threadnum].regs);

    //check for wraparound
    threadnum++;
    if (threadnum>threads.size()-1){
        if(threads.size()>3)
            threadnum=1;
        else
            threadnum=0;
    }

    //switch to new thread
    switchState(threads[threadnum].stack, threads[threadnum].regs);
}

    /*for(int j=0;j<threads.size();j++){    
        for(int i=0;i<10;i++){
            cout << hex << threads[j].regs[i] << endl;
        }
        cout << endl;
    }
    cout << "<<<<done>>>>>" << endl;*/