// ej_12_exportar_lienzo
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// numero de lineas dibujadas cada vez
int lineas = 5;

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo blanco
  background(255);
  
  // color RGBA aleatorio
  stroke(random(255), random(255), random(255), random(255));
}

void draw() {
}

// funcion para dibujar una linea aleatoria
// argumentos son posicion XY maximas en el lienzo y el ancho maximo del trazo
void dibujarLineaAleatoria(float posXMax, float posYMax, float maxAncho) {

  // vector 2D aleatorio para punto inicial de la linea
  PVector posInicio = new PVector(random(posXMax), random(posYMax));

  // vector 2D aleatorio para punto final de la linea
  PVector posFinal = new PVector(random(posXMax), random(posYMax));
  
  // ancho aleatorio de la linea
  strokeWeight(random(maxAncho));

  // dibujar linea aleatoria
  line(posInicio.x, posInicio.y, posFinal.x, posFinal.y);
}

// detectar tecla presionada
void keyPressed() {
  // si la tecla es i de imprimir
  if (key == 'i') {
    // grabar cuadro actual
    // gatos # son reemplazados por numero de cuadro
    saveFrame("lineaBacan######.jpg");
  }
  // si la tecla es s de siguiente
  else if (key == 's') {

    // dibujar lineas aleatorias
    // numero controlado por variable global lineas
    for (int i = 0; i < lineas; i++) {
      
      // llamar a funcion que creamos
      dibujarLineaAleatoria(width, height, 3);
    }
  }
  
  // si la tecla es f de fondo
  else if (key == 'f') {
    // pintar el fondo
    background(255);
  }
  // si la tecla es c de color
  else if (key == 'c') {
    // cambiar a color RGBA aleatorio
    stroke(random(255), random(255), random(255), random(255));
  }
}
