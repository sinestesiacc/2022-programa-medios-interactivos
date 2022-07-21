// ej_11_tres_elipses_funcion
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// numero de figuras
int figuras = 300;

// numero de dimensiones, 2D
int dimensiones = 2;

// declarar arreglo de colores
color[] colores = new color[figuras];

// declarar PVector para posiciones minimas
PVector posMin;

// declarar PVector para delta de posiciones
PVector posDelta;

// declarar arreglo de posiciones X
PVector[] pos = new PVector[figuras];

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo blanco
  background(255);

  // no dibujar bordes de figuras
  noStroke();

  // crear colores aleatorios
  coloresAleatorios(colores, 255, 255, 255);

  // crear posiciones aleatorias
  posicionesAleatorias();
  
}

void draw() {

  // dibujar todas las figuras
  dibujarElipses(figuras, colores, pos, 20);
}

void coloresAleatorios(color[] colores, int maxRojo, int maxVerde, int maxAzul) {

  // asignar valores a arreglo de color
  for (int i = 0; i < colores.length; i++) {
    colores[i] = color(random(maxRojo), random(maxVerde), random(maxAzul));
  }
}


void posicionesAleatorias() {
  // asignar valores a posiciones minimas
  posMin = new PVector(0, 0);

  // asignar valores a incrementos de posicion
  posDelta = new PVector(width/figuras, height/figuras);

  // asignar valores a arreglo de PVector de posicion
  for (int i = 0; i < pos.length; i++) {
    pos[i] = new PVector( posMin.x + i*posDelta.x, posMin.y + i*posDelta.y);
  }
}

void dibujarElipses(int numero, color[] colores, PVector[] pos, int diametro) {

  for (int i = 0; i < numero; i++) {
    fill(colores[i]);
    ellipse(pos[i].x, pos[i].y, diametro, diametro);
  }
}
