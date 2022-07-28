// ej_19_puntillismo_imagen
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// codigo traducido al espanol y adaptado
// del original disponible en
// http://learningprocessing.com/examples/chp15/example-15-14-Pointillism

// variables para imagenes
PImage esquemas;
PImage mena;

// diametro de cada punto
int diametro = 30;

// transparencia de cada punto
int transparencia = 100;

// tasa de cuadros
int velocidad = 60;

void setup() {

  // lienzo ancho 640px alto 640px
  size(640, 640);

  // fondo blanco
  background(255);

  // figuras sin borde
  noStroke();

  // cargar imagenes
  esquemas = loadImage("esquemas.jpg");
  mena = loadImage("mena.jpg");

  // tasa de cuadros
  frameRate(velocidad);
}


void draw() {

  // punto aleatorio en (x, y)
  int x = int(random(mena.width));
  int y = int(random(mena.height));

  // convertir esta posicion 2D a 1D
  // donde el pixel 0 sigue estando arriba a la izquierda
  // y la posicion aumenta hacia la derecha en la misma linea
  // hasta que se acaba y luego seguimos contando en la siguiente
  int ubicacion = x + y * mena.width;

  // cargar pixeles para acceder a sus valores pixel a pixel
  loadPixels();

  // encontrar rojo, verde y azul del punto
  float rojo = red(mena.pixels[ubicacion]);
  float verde = green(mena.pixels[ubicacion]);
  float azul = blue(mena.pixels[ubicacion]);

  // dibujar una elipse en la ubicacion y con el color
  fill(rojo, verde, azul, transparencia);
  ellipse(x, y, diametro, diametro);
}

// funcion que corre cuando se presiona una tecla
void keyPressed() {
  // si la tecla es b, borrar
  if (key == 'b') {
    // fondo negro
    background(0);
    // si la tecla es g, grabar cuadro
  } else if (key == 'g') {
    saveFrame("hola.jpg");
  }
}
