// ej_16_texto_rotacion
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// variable String para texto
String palabra = "hola";

// variable para almacenar angulo actual
float angulo = 0;

// variable para cambios de angulo entre cuadros
float anguloDelta = 0.05;

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo negro
  background(0);

  // tamano texto
  textSize(64);

  // texto centrado horizontal y vertical
  textAlign(CENTER, CENTER);
}


void draw() {

  // fondo negro
  background(0);
  
  // mover origen (0, 0) a la posicion del raton
  translate(mouseX, mouseY);
  
  // rotar lienzo en el angulo actual
  rotate(angulo);

  // dibujar palabra en origen
  text(palabra, 0, 0);

  // actualizar angulo
  angulo = angulo + anguloDelta;
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
