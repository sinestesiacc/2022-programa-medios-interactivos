// ej_15_texto_rotacion
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

String palabra = "hola";

int velocidad = 5;

float tamanoHorizontal = 10;

float angle = 0;

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo negro
  background(0);
  
  textSize(64);
  
  
  noCursor();
}


void draw() {

  // fondo negro
  background(0);

  pushMatrix();

  //float angle1 = radians(45);
  //translate(width/2, height/2);
   translate(mouseX, mouseY);
  rotate(radians(angle));

  // text(String, posX, posY);
  text(palabra, 0, 0);

  popMatrix();

  angle += 0.5;
}


// funcion que corre cuando se presiona una tecla
void keyPressed() {
  // si la tecla es b, borrar
  if (key == 'b') {
    // fondo negro
    background(0);
  } else if (key == 'g') {
    saveFrame("hola.jpg");
  }
}
