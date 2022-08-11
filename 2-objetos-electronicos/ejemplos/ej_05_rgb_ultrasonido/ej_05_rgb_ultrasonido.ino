// declarar variables
int pinR = 6; // led R en pin 3
int pinG = 5; // led G en pin 5
int pinB = 3; // led B en pin 6
int datoR; // variable para escribir datos en R
int datoG; // variable para escribir datos en G
int datoB; // variable para escribir datos en B
int pinT = 13; // trigger en pin 13
int pinE = 12; // echo en pin 12
int datoSensor; // variable para almacenar datos de sensor
int distancia; // distancia obtenida en cm

void setup() {
  // configuracion
  pinMode(pinR, OUTPUT); // pin R en modo salida
  pinMode(pinG, OUTPUT); // pin G en modo salida
  pinMode(pinB, OUTPUT); // pin B en modo salida
  pinMode(pinT, OUTPUT); // pin T en modo salida
  pinMode(pinE, INPUT); // pin E en modo entrada
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

  if (distancia >= 41) {
    datoR = 0; // asignar datos en R
    datoG = 0; // asignar datos en G
    datoB = 0; // asignar datos en B
  }

  if (distancia <= 40 && distancia >= 2 ) {
    datoR = map(distancia, 2, 40, 255, 0); // escribir datos en R
    datoG = 0; // escribir datos en G
    datoB = map(distancia, 2, 45, 0, 255); // escribir datos en B
  }

  analogWrite(pinR, datoR); // escribir datos en R
  analogWrite(pinG, datoG); // escribir datos en G
  analogWrite(pinB, datoB); // escribir datos en B
  delay(50);
}
