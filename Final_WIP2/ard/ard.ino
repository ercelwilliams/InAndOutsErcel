const int POT = A0;
const int SENSOR = A1;
int val = 0;
int valb = 0;

void setup() {
 // pinMode (SENSOR, INPUT);
  //pinMode (POT, INPUT);
  Serial.begin(9600); 
}
void loop() {
  val = analogRead(POT); 
  val = val / 4; 
  delay(10);   
  Serial.write(val+ valb);
  
  valb = analogRead(SENSOR);
  int serialValue = valb(
  Serial.write(valb);
  delay(100);

  
}
