// ej_08_tres_cuadrados_arreglos
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// numero de figuras
int figuras = 30;

// numero de dimensiones, 2D
int dimensiones = 2;

// declarar arreglo de colores
color[] colores = new color[figuras];

// declarar arreglo posiciones minimas
float[] posMin = new float[dimensiones];

// declarar arreglo deltas de posicion
float[] posDelta = new float[dimensiones];

// declarar arreglo posiciones X
float[] posX = new float[figuras];

// declarar posiciones Y
float[] posY = new float[figuras];

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo blanco
  background(255);

  // no dibujar bordes de figuras
  noStroke();

  // asignar valores a arreglo de color
  for (int i = 0; i < colores.length; i++) {
    colores[i] = color(random(255), random(255), random(255));
  }

  // asignar valores a posiciones minimas
  posMin[0] = 0;
  posMin[1] = 0;

  // asignar valores a incrementos de posicion
  posDelta[0] = width/(figuras);
  posDelta[1] = height/(figuras);

  // asignar valores a arreglo de posicionX
  for (int i = 0; i < posX.length; i++) {
    posX[i] = posMin[0] + posDelta[0]*i;
  }

  // asignar valores a arreglo de posicionY
  for (int i = 0; i < posY.length; i++) {
    posY[i] = posMin[1] + posDelta[1]*i;
  }
}

void draw() {

  for (int i = 0; i < figuras; i++) {
    fill(colores[i]);
    rect(posX[i], posY[i], 20, 20);
  }

}
