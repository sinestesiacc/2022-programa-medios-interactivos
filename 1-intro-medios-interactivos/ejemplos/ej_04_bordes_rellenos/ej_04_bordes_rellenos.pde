// ej_04_bordes_rellenos
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

void setup() {

  // lienzo ancho 630 y 360 alto, en formato 16:9
  size(640, 360);

  // sin trazo de borde
  noStroke();
}

void draw() {

  // variable a ser usada para tamano figuras
  int tamano = 150;

  // si el raton esta presionado
  if (mousePressed) {

    // color blanco de fondo
    background(255);

    // color rojo de relleno para elipse
    fill(255, 0, 0);

    // dibujar una elipse en la posicion del raton
    ellipse(mouseX, mouseY, tamano, tamano);
  }
  // si el raton no esta presionado
  else {

    // color negro de fondo
    background(0);
    
    // color amarillo de relleno para rectangulo
    fill(255, 255, 0);
    
    // dibujar un rectangulo en la posicion del raton
    rect(mouseX, mouseY, tamano, tamano);
  }
}
