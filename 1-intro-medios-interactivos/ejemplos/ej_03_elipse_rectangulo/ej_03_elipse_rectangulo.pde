// ej_03_elipse_rectangulo
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

void setup() {

  // lienzo ancho 630 y 360 alto, en formato 16:9
  size(640, 360);

  // opciones de elipse
  // este es el modo por defecto
  // la posicion define el centro
  ellipseMode(CENTER);
  // en este modo, la posicion es la esquina superior iquierda
  // ellipseMode(CORNER);

  // opciones de rectangulo
  // este es el modo por defecto
  // la posicion define la esquina superior izquierda
  rectMode(CORNER);
  // en este modo, la posicion define el centro
  // rectMode(CENTER);
}

void draw() {

  // color blanco de fondo
  background(255);

  // color rojo de relleno
  fill(255, 0, 0);

  // sin trazo de borde
  noStroke();

  // variable a ser usada para tamano figuras
  int tamano = 100;

  // si el raton esta presionado
  if (mousePressed) {
    // dibujar una elipse en la posicion del raton
    ellipse(mouseX, mouseY, tamano, tamano);
  }
  // si el raton no esta presionado
  else {
    // dibujar un rectangulo en la posicion del raton
    rect(mouseX, mouseY, tamano, tamano);
  }
}
