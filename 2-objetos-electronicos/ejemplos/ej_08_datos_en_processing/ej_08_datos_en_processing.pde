// ej_08_datos_en_processing
// por sergiomoradiaz
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Processing 4.0b8

import processing.serial.*;

Serial puerto; // crear objeto puerto serial
String datoSerial;  // datos recibidos desde el puerto serial
int datoSensor; // datos convertidos a numeros enteros
float d; // variable para diametro de elipse
float c; // variable para color de elipse

void setup()
{
  size(800, 600); // dimensiones de lienzo
  puerto = new Serial(this, "COM5", 9600); // serial en puerto COM5
  // Serial.list()[0]; // ver puertos disponibles en consola
}

void draw()
{
  if ( puerto.available() > 0) {  // si hay datos disponibles
    datoSerial = puerto.readStringUntil('\n'); // leer caracteres por cada linea

    try { // si no hay errores de lectura
      datoSensor = int(datoSerial.trim()); // transformar datos en numeros enteros
    }
    catch(Exception e) { // si hay errores de lectura
      // no hacer nada
    }

    println(datoSensor); // ver datos en consola
  }

  background(0);
  d = map(datoSensor, 0, 360, 0, 800); // mapeo de valores para diametro
  c = map(datoSensor, 0, 360, 255, 0); // mapeo de valores para color
  fill(c, 0, 0);
  ellipse(width/2, height/2, d, d);
}
