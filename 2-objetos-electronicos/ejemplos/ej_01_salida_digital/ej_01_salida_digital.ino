// ej_01_salida_digital
// por sergiomoradiaz
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Arduino 1.8.19

// declarar variables
int pinLed = 2; // led conectado en pin 2

void setup() {
  // configuracion
  pinMode(pinLed, OUTPUT); // configurar pin como salida
}

void loop() {
  // comportamiento
  digitalWrite(pinLed, HIGH); // encender led
  delay(1000); // esperar 1 segundo
  digitalWrite(pinLed, LOW); // apagar led
  delay(1000); // esperar 1 segundo
}
