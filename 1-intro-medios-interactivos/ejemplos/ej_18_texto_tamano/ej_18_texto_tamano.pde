// ej_18_texto_tamano
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

String palabra = "hola";

int velocidad = 5;

// tamano horizontal
float tamanoTexto = 10;

// 
float tamanoCajaX = 100;
float tamanoCajaY = 1000;

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo negro
  background(0);

  // tasa de cuadros por segundo
  frameRate(velocidad);
}


void draw() {

  // tomar posX del raton y mapearla del rango 0-ancho a 10-100
  tamanoTexto = map(mouseX, 0, width, 10, 100);
  
  // definir tamano del texto
  textSize(tamanoTexto);
  
  // tomar posY del raton y mapearla desde 0-altura al rango tamano de un caracter a (ancho de la palabra + 1 caracter)
  tamanoCajaX = map(mouseY, 0, height, textWidth(palabra)/palabra.length(), textWidth(palabra + " "));

  // text(String, posX, posY);
  text(palabra, random(width), random(height), tamanoCajaX, tamanoCajaY);
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
