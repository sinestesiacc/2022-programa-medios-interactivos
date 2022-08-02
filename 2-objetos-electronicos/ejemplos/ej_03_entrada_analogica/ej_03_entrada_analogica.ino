// declarar variables
int pinLed = 3; // led conectado en pin 3
int datoLed; // variable de datos para escribir en led
int pinSensor = A0; // sensor en pin A0
int datoSensor; // variable que almacena datos

void setup() {
  // configuracion
  pinMode(pinLed, OUTPUT); // configurar pin como salida
  pinMode(pinSensor, INPUT); // configurar pin como entrada
  Serial.begin(9600); // iniciar comunicacion serial
}

void loop() {
 // comportamiento
  datoSensor = analogRead(pinSensor); // leer y almacenar datos
  Serial.println(datoSensor); // visualizar datos en monitor serie

  // OPCION 1: MAPEO DE VALORES
   datoLed = map(datoSensor, 1023, 800, 0, 255); // mapeo de valores   
   analogWrite(pinLed, datoLed); // escribir datos analogicos

  // OPCION 2: CONDICIONALES
  /*
  if (datoSensor >= 60){          // si el dato es mayor o igual a 60
    digitalWrite(pinLed, HIGH);   // encender led
  } else if (datoSensor < 60){    // si el dato es menor a 60
    digitalWrite(pinLed, LOW);    // apagar led
  }
  */

}
