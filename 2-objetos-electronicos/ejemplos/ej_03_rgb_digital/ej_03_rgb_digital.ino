// ej_03_rgb_digital
// por sergiomoradiaz
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Arduino 1.8.19

// declarar variables
int pinSensor = 12; // sensor en pin 12
int datoSensor; // variable para almacenar datos de sensor
int pinR = 6; // led R en pin 3
int pinG = 5; // led G en pin 5
int pinB = 3; // led B en pin 6
int datoR; // variable para escribir datos en R
int datoG; // variable para escribir datos en G
int datoB; // variable para escribir datos en B

void setup() {
  // configuracion
  pinMode(pinSensor, INPUT); // pin sensor en modo entrada
  pinMode(pinR, OUTPUT); // pin R en modo salida
  pinMode(pinG, OUTPUT); // pin G en modo salida
  pinMode(pinB, OUTPUT); // pin B en modo salida
  Serial.begin(9600); // inicia la comunicacion serial
}

void loop() {
  // comportamiento
  datoSensor =  digitalRead(pinSensor); // leer y almacenar datos
  Serial.println(datoSensor); // ver datos en monitor

  if (datoSensor == 1) {
    datoR = 255; // asignar datos en R
    datoG = 0; // asignar datos en G
    datoB = 0; // asignar datos en B
  }
  else if (datoSensor == 0) {
    datoR = 0; // asignar datos en R
    datoG = 255; // asignar datos en G
    datoB = 0; // asignar datos en B
  }

  analogWrite(pinR, datoR); // escribir datos en R
  analogWrite(pinG, datoG); // escribir datos en G
  analogWrite(pinB, datoB); // escribir delay(50);
  delay(50);
  
}
