// ej_18_osc_enviar_a_madmapper
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

// declarar instancia de NetAddress
NetAddress ubicacionRemota;
// puertos para enviar y recibir
int puertoEnviar = 8010;
int puertoRecibir = 15000;

// direccion IP de la computadora que recibe
// las direcciones IP son 4 numeros entre 0 y 255
// separados por un punto
// 127.0.0.1 significa este mismo computador
// 127.0.0.1 tambien se puede definir como localhost
String ipRemota = "127.0.0.1";

void setup() {
  // crear lienzo
  size(400, 400);
  
  // constructor de OscP5
  // recibe mensajes en puertoRecibir
  osc = new OscP5(this, puertoRecibir);

  // constructor de NetAddress
  // envia mensajes a la IP remota
  // por el puertoEnviar
  ubicacionRemota = new NetAddress(ipRemota, puertoEnviar);
}

void draw() {
  // fondo magenta
  background(255, 0, 255);
}

// funcion que corre cuando presionas el raton
void mousePressed() {
  
  // crear un mensaje OSC con encabezado
  // segun Madmapper -> click derecho -> copy OSC address
  OscMessage mensaje = new OscMessage("/surfaces/Quad-3/opacity");
 
  // agregar un numero segun raton a ese mensaje
  float posX = map(mouseX, 0, width, 0.0, 1.0);
  mensaje.add(posX);
  
  // enviar el mensaje a la ubicacion remota
  osc.send(mensaje, ubicacionRemota);
}
