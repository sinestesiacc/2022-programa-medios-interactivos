// ej_06_tres_elipses
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

void setup() {
  
  // lienzo ancho 800px alto 600px
  size(800, 600);
  
  // fondo blanco
  background(255);
  
  // no dibujar bordes de figuras
  noStroke();
}

void draw() {
  
  // relleno rojo
  fill(255, 0, 0);
  // elipse roja arriba izquierda
  ellipse(100, 100, 20, 20);
  
  // relleno verde
  fill(0, 255, 0);
  // elipse verde central
  ellipse(300, 300, 20, 30);
  
  // relleno azul
  fill(0, 0, 255);
  // elipse azul abajo derecha
  ellipse(500, 500, 30, 40);
  
}
