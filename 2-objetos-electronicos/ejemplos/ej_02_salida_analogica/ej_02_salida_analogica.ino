// ej_01_salida_digital
// por sergiomoradiaz
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Arduino 1.8.19

// declarar variables
int pinLed = 3; // led conectado en pin 3
int datoLed; // variable de datos para escribir en led
int brilloLed; // factor de cambio analogico o dimmer

void setup() {
  // configuracion
  pinMode(pinLed, OUTPUT); // configurar pin como salida
}

void loop() {
  // comportamiento
  if (datoLed <= 0) { // si el valor del dato llega a 0
    brilloLed = 1; // aumentar dimmer
  }
  if (datoLed >= 255) { // si el valor del dato llega a 255
    brilloLed = -1; // disminuir dimmer
  }
  datoLed = datoLed + brilloLed; // aumentar el brillo
  analogWrite(pinLed, datoLed); // escribir datos analogicos
  delay(5); // tiempo de espera en milisegundos
}
