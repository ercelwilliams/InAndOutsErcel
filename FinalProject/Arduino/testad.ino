const int POT = A0; //poten
const int SENSOR = A1;// photocell

int val = 0;
int valB = 0;

void setup() {
  pinMode (POT, INPUT);
  pinMode (SENSOR, INPUT);
  Serial.begin(9600);
}
void loop() {

  val = analogRead(SENSOR);
  val = map(val,0,1023,0,80);
  delay(100);

  valB = analogRead(POT);
  valB = map(valB,0,1023,81,255); 
  delay(100); 
  //Serial. println(val);
   
   
 Serial.write(val);
 Serial.write(valB);
  //Serial.write(",");
}
