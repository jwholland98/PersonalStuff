void setup() {
  pinMode(13, OUTPUT);
  Serial.begin(9600);
}

int count=0;
void loop() {
  digitalWrite(13, HIGH);
  delay(100); // ms
  digitalWrite(13, LOW);
  delay(100);
  count++;
  if(count>100) count=0;
  Serial.print(count);
  Serial.print(',');
  Serial.println(100-count);
}

/*
 * int main(){
 *  setup(){
 *    while(true)
 *      loop;
 *  }
 *}
 */
