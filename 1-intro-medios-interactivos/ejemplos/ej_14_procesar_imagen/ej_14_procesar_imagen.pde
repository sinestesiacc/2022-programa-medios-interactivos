// ej_14_procesar_imagen
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// este ejemplo usa las portadas de los dos primeros discos
// de Javiera Mena: Esquemas Juveniles y Mena

// variables para imagenes
PImage esquemas;
PImage mena;

void setup() {

  // lienzo ancho 128-px alto 640px
  size(1280, 640);

  // fondo blanco
  background(255);

  // cargar imagenes
  esquemas = loadImage("esquemas.jpg");
  mena = loadImage("mena.jpg");
}


void draw() {
  
  // filtro rojo
  tint(255, 0, 0);
  image(esquemas, 0, 0);

  // filtro verde
  tint(0, 255, 0);
  image(esquemas, width/2, 0);
  
  // filtro azul y semitransparente
  tint(0, 0, 255, 200);
  image(mena, width/4, 0);
  
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
