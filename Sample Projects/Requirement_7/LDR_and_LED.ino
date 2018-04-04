//Initializing the pins
//Constant value cannot be changed throughout the program 
const int ledpin = 13;    // Number of the digital pin to which LED is connected
const int ldrpin = A0;    // Number of the analog pin to which the LDR is connected

void setup()
{
  Serial.begin(9600);
  pinMode(ledpin, OUTPUT);  // Initialize the LED pin as output
  pinMode(ldrpin, INPUT);  // Initialize the LDR pin as input
}


void loop()
{
  int ldrstatus = analogRead(ldrpin);  //read the status of the LDR value
  //Check if the LDR value is less than or equal to 150
  // if the condition is true then the LED will be high

  if (ldrstatus <= 150)
  {
    digitalWrite(ledpin, HIGH);  // Turn on LED
    Serial.println("It is night time, the lights have turned ON");  //Print message on Pi
  }
  else
  {
    digitalWrite(ledpin, LOW);  // Turn off LED
    Serial.println("It is day time, no need of the lights");  // Print message on Pi
  }
  delay(500);
}
