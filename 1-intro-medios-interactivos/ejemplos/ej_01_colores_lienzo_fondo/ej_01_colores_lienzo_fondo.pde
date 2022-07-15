// ej_01_colores_lienzo_fondo
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

void setup() {
  
  // lienzo de ancho 500 y alto 500
  size(500, 500);

  // fondo color rojo
  background(255, 0, 0);

  // relleno color verde
  fill(0, 255, 0);
}

void draw() {

  // elipse en posicion (250, 250)
  // con ancho 100 y alto 100
  ellipse(250, 250, 100, 100);
}
