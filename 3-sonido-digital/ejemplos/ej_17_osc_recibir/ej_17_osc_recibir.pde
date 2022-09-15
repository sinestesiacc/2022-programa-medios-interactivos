// ej_17_osc_recibir
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Processing 4.0.1

// importar bibliotecas para OSC
import netP5.*;
import oscP5.*;

// declarar instancia de OscP5
OscP5 osc;

// puerto para recibir
int puertoRecibir = 179;

void setup() {
  size(400, 400);

  // constructor de OscP5
  // recibe mensajes en puertoRecibir
  osc = new OscP5(this, puertoRecibir);


}

void draw() {
  // fondo cyan
  background(0, 255, 255);
}


// oscEvent() es una funcion
// que corre cada vez que recibimos un nuevo mensaje
void oscEvent(OscMessage mensajeEntrante) {
  // imprimir que se recibio un mensaje
  print("mensaje recibido. ");
  // imprimir encabezado del mensaje
  print("encabezado: " + mensajeEntrante.addrPattern());
  // imprimir tipo del mensaje recibido
  print(". tipo: " + mensajeEntrante.typetag());
  // imprimir el valor del item 0 recibido
  // e interpretarlo como numero entero
  print(". string: " + mensajeEntrante.get(0).stringValue());
  println(". entero: " + mensajeEntrante.get(1).intValue());
}
