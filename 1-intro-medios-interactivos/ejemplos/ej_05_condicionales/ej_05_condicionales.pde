// ej_05_condicionales
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
  
  // fondo blanco
  background(255);
}

void draw() {

  // si el raton esta en el tercio izquierdo horizontal del lienzo
  if (mouseX <(1.0/3.0) * width) {
    
    // relleno rojo
    fill(255, 0, 0);
  }
  // si el raton esta en el tercio central horizontal del lienzo
  else if (mouseX < (2.0/3.0) * width) {
    
    // relleno verde
    fill(0, 255, 0);
  }
  // en otro caso,
 // si el raton esta en el tercio central horizontal del lienzo
  else {
    
    // relleno azul
    fill(0, 0, 255);
  }

  // elipse en la posicion del raton
  // y ancho 100 y alto 100
  ellipse(mouseX, mouseY, 100, 100);
}
