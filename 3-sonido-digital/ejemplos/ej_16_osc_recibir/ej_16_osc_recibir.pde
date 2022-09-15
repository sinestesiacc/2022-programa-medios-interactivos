import netP5.*;
import oscP5.*;

// open sound control

OscP5 oscP5;
NetAddress ubicacionRemota;

int puertoEscucha = 12000;
int puertoRecepcion = 12000;
String ipRemota = "127.0.0.1";

void setup() {
  size(400, 400);

  oscP5 = new OscP5(this, puertoEscucha);

  ubicacionRemota = new NetAddress(ipRemota, puertoRecepcion);
}

void draw() {
  background(0, 255, 0);
}

void mousePressed() {
  OscMessage mensaje = new OscMessage("/prueba");

  mensaje.add(123);

  oscP5.send(mensaje, ubicacionRemota);
}


void oscEvent(OscMessage mensajeEntrante) {
  print("mensaje recibido. ");
  print("direccion: " + mensajeEntrante.addrPattern());
  print(". tipo: " + mensajeEntrante.typetag());
  println(". valor: " + mensajeEntrante.get(0).intValue());
}
