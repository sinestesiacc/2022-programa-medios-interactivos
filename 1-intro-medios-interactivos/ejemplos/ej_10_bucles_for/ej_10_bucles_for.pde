// ej_10_bucles_for
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// esta es una variable global
// esta declarada fuera de todo bloque de codigo
int figuras = 10;

void setup() {

  // crear lienzo cuadrado
  size(500, 500);

  // fondo blanco
  background(255);

  // dibujar figuras sin borde
  noStroke();

  // tasa de refresco de draw()
  frameRate(10);

  // iterar con variable contador i
  // i toma valores 0, 1, 2, 3
  // cuando i toma valor 4 no cumple condicion
  // y bucle termina
  for (int i = 0; i < 4; i++) {
    // imprimir en consola
    println(i);
  }
}

void draw() {

  // crear variable contador
  // para dibujar tantas figuras como indica la variable
  for (int contador = 0; contador < figuras; contador++) {

    // color de relleno es RGBA aleatorio
    fill(random(255), random(255), random(255), random(255));

    // elipse en posicion aleatoria
    ellipse(random(width), random(height), 10, 10);
  }
}
