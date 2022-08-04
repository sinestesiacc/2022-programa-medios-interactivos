// ej_03_entrada_analogica
// por sergiomoradiaz
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Arduino 1.8.19

// declarar variables
int pinLed = 3; // led en pin 3
int datoLed; // variable para escribir datos en led
int pinSensor = A0; // sensor en pin A0
int datoSensor; // variable para leer datos de sensor

void setup() {
  // configuracion
  pinMode(pinLed, OUTPUT); // pin en modo salida
  pinMode(pinSensor, INPUT); // pin en modo entrada
  Serial.begin(9600); // iniciar comunicacion serial
}

void loop() {
  // comportamiento
  datoSensor = analogRead(pinSensor); // leer y almacenar datos
  Serial.println(datoSensor); // ver datos en monitor

  datoLed = map(datoSensor, 0, 1023, 0, 255); // mapeo de valores
  analogWrite(pinLed, datoLed); // escribir datos analogicos
}
