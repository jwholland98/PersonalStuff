void setup() {
  pinMode(11, OUTPUT);
  pinMode(13, INPUT);
  Serial.begin(9600);
}

void loop() {
  for(int i=0;i<256;i++){
    analogWrite(11, i);
    delay(10);
    Serial.println(i);
  }
  for(int i=255;i>0;i--){
    analogWrite(11, i);
    delay(10);
    Serial.println(i);
  }
}
