// ej_17_texto
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// texto a usar
String palabra = "hola";

// cuadros por segundo
int velocidad = 10;

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo negro
  background(0);
  
  // tasa de cuadros por segundo
  frameRate(velocidad);
}


void draw() {
  // text(String, posX, posY);
  text(palabra, random(width), random(height));
}
