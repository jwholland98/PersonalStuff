#include <Servo.h>

Servo first;

void setup() {
  Serial.begin(9600);
  first.attach(12);
  first.write(0);
}

void loop() {
  //int val=analogRead(A0);
  //Serial.println(val);
  for(int i=0;i<180;i++){
    first.write(i);
    delay(5);
  }
  for(int i=180;i>0;i--){
    first.write(i);
    delay(5);
  }
}
