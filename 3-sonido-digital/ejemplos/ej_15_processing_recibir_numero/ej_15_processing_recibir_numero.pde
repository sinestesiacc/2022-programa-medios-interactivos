// ej_15_processing_recibir_numero
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Processing 4.0.1

// importar biblioteca serial
import processing.serial.*;

// instancia de clase Serial
Serial puerto;

// variable que cambiamos para
// apuntar a nuestro Arduino
int puertoIndice = 2;

// variable para el nombre del puerto
String puertoNombre;

// tasa de transferencia
// debe ser la misma que en Arduino
int tasaBaudios = 9600;

// variable para recibir
int valorRecibido = -1;

void setup() {
  
  // crear lienzo
  size(400, 400);
  
  // imprimir en consola la lista de 
  // puertos seriales disponibles
  // revisar y actualizar variable puertoIndice 
  printArray(Serial.list());
  
  // recuperar el nombre de nuestro Arduino
  puertoNombre = Serial.list()[puertoIndice];
  
  // constructor de puerto serial
  // apuntando al nombre de nuestro Arduino
  // y con la tasa de transferencia
  puerto = new Serial(this, puertoNombre, tasaBaudios);
  
}

void draw() {
  
  // revisar si hay datos disponibles en el puerto serial
  if (puerto.available() > 0) {
    // si los hay, leerlos y almacenarlos en variable
    valorRecibido = puerto.read();
  }
  
  // pintar el fondo negro
  background(0);
  
  // si el valor recibido es 0
  // el color de relleno es rojo
  if (valorRecibido == 0) {
    fill(255, 0, 0);
  }
  // si valor recibido es 1
  // el color de relleno es verde
  else if (valorRecibido == 1) {
    fill(0, 255, 0);
  }
  
  // dibujar elipse en la mitad del lienzo
  ellipse(width/2, height/2, 100, 100);
}
