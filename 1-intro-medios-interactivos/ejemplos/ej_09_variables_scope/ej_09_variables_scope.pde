// ej_09_variables_scope
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// esta es una variable global
// esta declarada fuera de todo bloque de codigo
int variableGlobal = 5;

void setup() {

  println("setup() dice: " + variableGlobal);

  // declarar variable local
  // solamente puede ser leida y modificada dentro de setup
  int variableLocal = 4;
  println("setup() dice: " + variableLocal);
}

void draw() {
  
  // esta linea no funciona
  // println(variableLocal);
  // porque variableLocal solamente existe dentro de setup
  
}

void keyPressed() {
  variableGlobal = variableGlobal + 1;
  println("keyPressed dice: " + variableGlobal);

  for (int i = 0; i < 3; i++) {
    println("for() dice: " + i);
  }

  // esta linea no funciona
  // println("draw() dice: " + i);
  // porque i solamente existe dentro de for()
}
