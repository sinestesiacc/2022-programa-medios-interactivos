// ej_06_servo_analogico
// por sergiomoradiaz
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Arduino 1.8.19

// declarar variables
#include <Servo.h> // libreria servo
Servo servo; // crear objeto servo

int pinSensor = A0; // sensor en pin A0
int datoSensor; // variable para leer datos de sensor
int pinServo = 3; // servo en pin 3
int datoServo; // variable para escribir datos en servo

void setup() {
  // configuracion
  pinMode(pinSensor, INPUT); // pin sensor en modo entrada
  servo.attach(pinServo); // pin asociado al objeto servo
  Serial.begin(9600); // iniciar comunicacion serial
}

void loop() {
  // comportamiento
  datoSensor =  analogRead(pinSensor); // leer y almacenar datos
  Serial.println(datoSensor); // ver datos en monitor

  datoServo = map(datoSensor, 0, 1023, 0, 360); // mapeo de valores
  servo.write(datoServo); // escribir datos en servo
}
