// ej_XX_samples
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Processing 4.0b9
// ejemplo traducido y basado
// de Sound=> IO => AudioInput

// importar biblioteca Processing Sound
import processing.sound.*;

SoundFile palmas;
SoundFile silbido;
SoundFile uu;

String archivoPalmas = "palmas";
String archivoSilbido = "silbido";
String archivoUu = "uu";

String formato = ".wav";



void setup() {

  size(500, 500);
  background(255);

  palmas = new SoundFile(this, archivoPalmas + formato);
  silbido = new SoundFile(this, archivoSilbido + formato);
  uu = new SoundFile(this, archivoUu + formato);
}

void draw() {
}

void keyPressed() {

  if (key == '1') {
    // primer float es velocidad, segundo float es volumen
    palmas.play(1.0, 1.0);
  } else if (key == '2') {
    silbido.play(1.0, 1.0);
  } else if (key == '3') {
    uu.play(1.0, 1.0);
  }
}
