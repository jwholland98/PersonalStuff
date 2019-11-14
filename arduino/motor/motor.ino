#define PWMA 3
#define INA0 2
#define INA1 4
#define STBY 5
int pins[] = {PWMA, INA0, INA1, STBY};
int pinsCount=4;

void setup() {
   for (int i=0; i<pinsCount;i++){
      pinMode(pins[i], OUTPUT);
      digitalWrite(pins[i], LOW);
   }
    digitalWrite(STBY, HIGH);
}

void cyclePWM(int dt) {
  for (int i=0;i<255; i++){
    analogWrite (PWMA, i);
    delay(dt);
  }
  for (int i=255;i>0; i--){
    analogWrite (PWMA, i);
    delay(dt);
  }
}

void loop(){
  //Forwards
  digitalWrite(INA0, HIGH);
  digitalWrite(INA1, LOW);
  cyclePWM(10);
  //Backwards
  digitalWrite(INA0, HIGH);
  digitalWrite(INA1, LOW);
  digitalWrite(INA0, HIGH);
}
