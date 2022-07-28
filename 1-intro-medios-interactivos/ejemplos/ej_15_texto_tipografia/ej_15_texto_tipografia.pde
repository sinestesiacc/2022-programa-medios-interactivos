// ej_15_texto_tipografia
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// creditos de tipografia Compagnon
// https://velvetyne.fr/fonts/compagnon/
// Compagnon Light and Roman have been drawn by Juliette Duhé and Léa Pradine;
// Compagnon Italic by Valentin Papon; Compagon Medium by Sébastien Riollier
// and Compagnon Script by Chloé Lozano.
// Meet Compagnon. You can use it, modify it and redesign it freely.
// Crédits: EESAB-Rennes, Typography creation studio, Master Graphic Design, 2018.
// Made in France, Made in Brittany.

// extraido de propuesta de nueva constitucion de chile 2022
String[] constitucion = {"Nosotras y nosotros, el pueblo de Chile, ",
  "conformado por diversas naciones, ",
  "nos otorgamos libremente esta Constitución,",
  "acordada en un proceso participativo, paritario y democrático."};

PFont compagnonLight;

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo blanco
  background(255);
  
  smooth(8);
  
  // relleno negro
  fill(0);
  
  compagnonLight = loadFont("Compagnon-Light-16.vlw");
  
  textFont(compagnonLight);
  
  textSize(16);

  textAlign(CENTER, CENTER);
  
  PFont.list();
  
}


void draw() {
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

// funcion que corre cuando se presiona el mouse
void mousePressed() {  

  // escribir texto en posicion aleatoria
  text(constitucion[int(random(constitucion.length))], mouseX, mouseY);
}
