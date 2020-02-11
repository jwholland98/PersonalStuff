#pragma once

typedef void (*funPtr)(int);

void startThread(funPtr ptr);
void shareCPU(int &thread);