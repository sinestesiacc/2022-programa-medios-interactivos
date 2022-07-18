// ej_07_tres_cuadrados_variables
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// declarar colores
color rellenoRojo;
color rellenoVerde;
color rellenoAzul;

// declarar posiciones minimas
float posMinX;
float posMinY;

// declarar deltas de posicion
float posDeltaX;
float posDeltaY;

// declarar posiciones X
float posX0;
float posX1;
float posX2;

// declarar posiciones Y
float posY0;
float posY1;
float posY2;

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo blanco
  background(255);

  // no dibujar bordes de figuras
  noStroke();

  // asignar valores a variables de color
  rellenoRojo = color(255, 0, 0);
  rellenoVerde = color(0, 255, 0);
  rellenoAzul = color(0, 0, 255);

  // asignar valores a posiciones minimas
  posMinX = width/10.0;
  posMinY = height/10.0;

  // asignar valores a incrementos de posicion
  posDeltaX = width/4.0;
  posDeltaY = height/4.0;

  // asignar valores a variables de posicionX
  posX0 = posMinX + posDeltaX * 0;
  posX1 = posMinX + posDeltaX * 1;
  posX2 = posMinX + posDeltaX * 2;

  // asignar valores a variables de posicionY
  posY0 = posMinY + posDeltaY * 0;
  posY1 = posMinY + posDeltaY * 1;
  posY2 = posMinY + posDeltaY * 2;
}

void draw() {

  // relleno rojo
  fill(rellenoRojo);
  // rectangulo rojo arriba izquierda
  rect(posX0, posY0, 20, 20);

  // relleno verde
  fill(rellenoVerde);
  // rectangulo verde central
  rect(posX1, posY1, 20, 30);

  // relleno azul
  fill(rellenoAzul);
  // rectangulo azul abajo derecha
  rect(posX2, posY2, 30, 40);
}
