// ej_17_cargar_imagen
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// variables para imagenes
PImage esquemas;
PImage mena;

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo blanco
  background(255);

  // cargar imagenes
  esquemas = loadImage("esquemas.jpg");
  mena = loadImage("mena.jpg");
}


void draw() {
  image(esquemas, 0, 0);
  image(mena, width/2, 0);
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
