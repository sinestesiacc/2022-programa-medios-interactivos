// ej_15_arduino_enviar_numero
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Arduino 1.8.19

// abrimos puerto serial a cierta tasa de transferencia
// y escribimos numeros enteros en el puerto serial
// con la funcion Serial.write() 

// definir la tasa de transferencia
int tasaBaudios = 9600;

void setup() {
  // abrir puerto serial usando la tasa de transferencia
  Serial.begin(tasaBaudios);
}


void loop() {
  // enviar 0 y esperar un segundo
  Serial.write(0);
  delay(1000);

  // enviar 1 y esperar un segundo
  Serial.write(1);
  delay(1000);
}
