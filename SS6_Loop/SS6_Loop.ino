const int button = 2;
const int LED = 12;
const int LED2 = 11;
const int LED3 = 10;
const int LED4 = 9;
const int LED5 = 8;
const int LED6 = 7;

int buttonState = 0;

void setup() {
  pinMode(LED, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT); 
  pinMode(button, INPUT);
 
}

void loop() {
   buttonState = digitalRead(button);    
  delay (50); 

 
  if (buttonState == HIGH) {
    digitalWrite(LED, HIGH);
    digitalWrite(LED2, HIGH);
    digitalWrite(LED3, HIGH);
    digitalWrite(LED4, HIGH);
    digitalWrite(LED5, HIGH );
    digitalWrite(LED6, HIGH);

    delay (20);
    digitalWrite(LED, LOW);
    digitalWrite(LED5, HIGH);
    digitalWrite(LED4, LOW);
    digitalWrite(LED3, HIGH);
    digitalWrite(LED2, LOW );
    digitalWrite(LED, HIGH);

    delay (20); 
    digitalWrite(LED, HIGH);
    digitalWrite(LED5, LOW);
    digitalWrite(LED4, HIGH);
    digitalWrite(LED3, LOW);
    digitalWrite(LED2, HIGH );
    digitalWrite(LED, LOW);
    
    
  } else {
    digitalWrite(LED, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, LOW);
    digitalWrite(LED5, LOW);
    digitalWrite(LED6, LOW);
    digitalWrite(LED, LOW);
  }   
}
