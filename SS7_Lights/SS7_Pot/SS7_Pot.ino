const int LED = 11;  
const int LED2 = 10;
const int LED3 = 9;
const int potPin = A0; 
int val = 0;

void setup() {
  pinMode (LED, OUTPUT); 
  pinMode (LED2, OUTPUT);
  pinMode (LED3, OUTPUT);  
  Serial.begin(9600);  // initialize serial communication at 9600 bits per second
}

void loop() {
  val = analogRead(potPin);     // reads pot 0 to 1023            
  //analogWrite (LED, val/4);
  //analogWrite (LED2, val/4);
  //analogWrite (LED3, val/4);// reduces value to match PWM output range 0-255

  val = analogRead(potPin); //read sensor and assign to variable called val
  val = val / 4; //divide val by 4 or remap values to get byte-sized 0-255
  delay(10); // Wait 100 milliseconds
  
     if ( val>180){
    analogWrite (LED, HIGH);
    analogWrite (LED2, HIGH);
    analogWrite (LED3, HIGH);
    delay(100);
    analogWrite (LED, LOW);
    analogWrite (LED2, HIGH);
    analogWrite (LED3, LOW);
    delay(100);
    analogWrite (LED, HIGH);
    analogWrite (LED2, LOW);
    analogWrite (LED3, HIGH);
   delay(100);
    analogWrite (LED, HIGH);
    analogWrite (LED2, HIGH);
    analogWrite (LED3, HIGH);
    }
    else
    analogWrite (LED, LOW);
    analogWrite (LED2, LOW);
    analogWrite (LED3, LOW);





  /////////Uncomment Serial.print() OR Serial.write() and not both!//////////////
  
  //Serial. println(val); //to send human-readable data to Arduino monitor
  Serial.write(val);  //to send binary data to Processing
}
