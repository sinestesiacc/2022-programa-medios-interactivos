// ej_12_grabar_lienzo
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// numero de lineas por cuadro
int lineas = 1;

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo blanco
  background(255);

}

void draw() {
}

// funcion para dibujar una linea aleatoria
// argumentos son posicion XY maximas en el lienzo y el ancho maximo del trazo
void dibujarLineaAleatoria(float posXMax, float posYMax, float maxAncho) {
  PVector posInicio = new PVector(random(posXMax), random(posYMax));
  PVector posFinal = new PVector(random(posXMax), random(posYMax));
  stroke(random(maxAncho));

  line(posInicio.x, posInicio.y, posFinal.x, posFinal.y);
}

// detectar tecla presionada
void keyPressed() {
  // si la tecla es i de imprimir
  if (key == 'i') {
    // grabar cuadro actual
    saveFrame("lineaBacan######.jpg");
  }
  // si la tecla es s de siguiente
  else if (key == 's') {
    // dibujar siguientes linea aleatorias
    for (int i = 0; i < lineas; i++) {
      dibujarLineaAleatoria(width, height, 5);
    }
  }
}
