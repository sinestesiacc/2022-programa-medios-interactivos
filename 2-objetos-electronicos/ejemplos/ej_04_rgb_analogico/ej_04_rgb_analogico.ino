// ej_04_rgb_analogico
// por sergiomoradiaz
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Arduino 1.8.19

// declarar variables
int pinSensor = A0; // sensor en pin A0
int datoSensor; // variable para almacenar datos de sensor
int pinR = 6; // led R en pin 6
int pinG = 5; // led G en pin 5
int pinB = 3; // led B en pin 3
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
  datoSensor =  analogRead(pinSensor); // leer y almacenar datos
  Serial.println(datoSensor); // ver datos en monitor

  if (datoSensor > 700) {
    datoR = 255; // asignar datos en R
    datoG = 0; // asignar datos en G
    datoB = 0; // asignar datos en B
  }
  else {
    datoR = 0; // asignar datos en R
    datoG = 255; // asignar datos en G
    datoB = 0; // asignar datos en B
  }
  
  analogWrite(pinR, datoR); // escribir datos en R
  analogWrite(pinG, datoG); // escribir datos en G
  analogWrite(pinB, datoB); // escribir datos en B
  delay(50);
}
