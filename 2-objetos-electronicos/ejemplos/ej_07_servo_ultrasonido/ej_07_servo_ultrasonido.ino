// ej_07_servo_ultrasonido
// por sergiomoradiaz
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Arduino 1.8.19

// declarar variables
#include <Servo.h> // libreria servo
Servo servo; // crear objeto servo

int pinT = 13; // trigger en pin 13
int pinE = 12; // echo en pin 12
int datoSensor; // variable para almacenar datos de sensor
int distancia; // distancia obtenida en cm
int pinServo = 3; // servo en pin 3
int datoServo; // variable para escribir datos en servo

void setup() {
  // configuracion
  pinMode(pinT, OUTPUT); // pin T en modo salida
  pinMode(pinE, INPUT); // pin E en modo entrada
  servo.attach(pinServo); // pin asociado al objeto servo
  Serial.begin(9600); // iniciar comunicacion serial
}

void loop() {
  // comportamiento
  digitalWrite(pinT, LOW); // iniciar T en 0
  delayMicroseconds(2); // esperar 2 microsegundos
  digitalWrite(pinT, HIGH); // activar pulso
  delayMicroseconds(10); // esperar 10 microsegundos
  digitalWrite(pinT, LOW); // cortar pulso

  datoSensor = pulseIn(pinE, HIGH); // leer pulso y almacenar datos
  distancia = datoSensor * 0.034 / 2; // calcular distancia en cm
  Serial.println(distancia); // ver informacion en monitor

  if (distancia <= 50) {
    datoServo = 0; // asignar datos para servo
  }

  if (distancia >= 41) {
    datoServo = 90; // asignar datos para servo
  }

  servo.write(datoServo); // escribir datos en servo
  delay(50);

}
