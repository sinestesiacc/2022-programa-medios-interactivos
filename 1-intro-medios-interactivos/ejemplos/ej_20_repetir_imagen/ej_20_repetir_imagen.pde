// ej_20_repetir_imagen
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// variables para imagenes
PImage esquemas;
PImage mena;

int repetirEsquemas = 2;
int repetirMena = 2;

int velocidad = 10;

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo blanco
  background(255);

  // cargar imagenes
  esquemas = loadImage("esquemas.jpg");
  mena = loadImage("mena.jpg");
  
  frameRate(velocidad);

}


void draw() {
  repetirImagen(esquemas, repetirEsquemas);
  repetirImagen(mena, repetirMena);
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

void repetirImagen(PImage imagen, int repeticiones) {

  for (int i = 0; i < repeticiones; i++) {
    pushMatrix();

    translate(random(width), random(height));
    rotate(random(360));

    float nuevoAncho = random(imagen.width);
    float nuevaAltura = nuevoAncho * imagen.width / imagen.height;
    image(imagen, 0, 0, nuevoAncho, nuevaAltura);
    popMatrix();
  }
}
