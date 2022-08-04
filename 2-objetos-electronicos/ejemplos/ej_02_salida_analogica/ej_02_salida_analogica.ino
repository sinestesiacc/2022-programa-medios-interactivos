// ej_02_salida_analogica
// por sergiomoradiaz
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Arduino 1.8.19

// declarar variables
int pinLed = 3; // led en pin 3
int datoLed; // variable para escribir datos en led
int cambioLed; // variable para factor de cambio

void setup() {
  // configuracion
  pinMode(pinLed, OUTPUT); // pin en modo salida
}

void loop() {
  // comportamiento
  if (datoLed <= 0) { // si el dato llega a 0
    cambioLed = 1; // cambio positivo
  }
  if (datoLed >= 255) { // si el dato llega a 255
    cambioLed = -1; // cambio negativo
  }
  datoLed = datoLed + cambioLed; // modificar datos analogicos
  analogWrite(pinLed, datoLed); // escribir datos analogicos
  delay(5); // espera en milisegundos
}
