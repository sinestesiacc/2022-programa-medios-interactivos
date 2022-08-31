// ej_XX_ruido
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Processing 4.0b9
// ejemplo traducido y basado
// de Sound=> IO => AudioInput

// importar biblioteca Processing Sound
import processing.sound.*;

// ruido blanco
WhiteNoise ruidoBlanco;

// ruido rosado
PinkNoise ruidoRosado;

// ruido cafe
BrownNoise ruidoCafe;

// variables pare decidir cual ruido tcoar
boolean tocarRuidoBlanco = false;
boolean tocarRuidoCafe = false;
boolean tocarRuidoRosado = false;

void setup() {

  // instancia ruido blanco
  ruidoBlanco = new WhiteNoise(this);
  // amplitud de ruido blanco
  ruidoBlanco.amp(0.5);

  // instancia ruido cafe
  ruidoCafe = new BrownNoise(this);
  // amplitud de ruido cafe
  ruidoCafe.amp(0.5);

  // instancia ruido rosado
  ruidoRosado = new PinkNoise(this);
  // amplitud de ruido rosado
  ruidoRosado.amp(1.0);
}

void draw() {

  if (tocarRuidoBlanco) {
    ruidoBlanco.play();
  } else {
    ruidoBlanco.stop();
  }

  if (tocarRuidoCafe) {
    ruidoCafe.play();
  } else {
    ruidoCafe.stop();
  }

  if (tocarRuidoRosado) {
    ruidoRosado.play();
  } else {
    ruidoRosado.stop();
  }
}

// funcion que corre cada vez que se presiona una tecla
void keyPressed() {

  // apagar todos los ruidos
  tocarRuidoBlanco = false;
  tocarRuidoCafe = false;
  tocarRuidoRosado = false;

  // si la tecla es 1, prender ruido blanco
  if (key == '1') {
    println('1');
    tocarRuidoBlanco = true;
  }
  // si la tecla es 2, prender ruido cafe
  else if (key == '2') {
    tocarRuidoCafe = true;
  } else if (key == '3') {
    // si la tecla es 3, prender ruido rosado
    tocarRuidoRosado = true;
  }
}
