// ej_02_puntos_lineas
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

void setup() {

  // lienzo ancho 630 y 360 alto, en formato 16:9
  size(640, 360);

  // color blanco de fondo
  background(255);
}

void draw() {

  // trazo rojo
  stroke(255, 0, 0);

  // trazo invisible
  // noStroke();

  float x1 = random(width);
  float x2 = random(width);
  float y1 = random(height);
  float y2 = random(height);

  // punto en posicion aletaoria (x1, y1)
   point(x1, y1);

  // linea entre puntos aleatorios (x1, y1) y (x2, y2)
  // line(x1, y1, x2, y2);
}
