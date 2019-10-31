void setup() {
  pinMode(13, OUTPUT);
  pinMode(12, INPUT_PULLUP);
  Serial.begin(9600);
}

int count=0;
void loop() {
  int val=digitalRead(12);
  Serial.println(count);
  if (val==LOW){
    count+=1;
    delay(200);
    while(true){
      val=digitalRead(12);
      if (val==HIGH)
        break;
      delay(1);
    }
  }
  if(count>=2)
     digitalWrite(13,HIGH);
}
