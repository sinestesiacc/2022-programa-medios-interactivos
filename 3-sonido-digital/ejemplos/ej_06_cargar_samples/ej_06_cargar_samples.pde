// ej_06_cargar_samples
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Processing 4.0.1
// ejemplo traducido y basado
// de Sound => Soundfile => Keyboard

// importar biblioteca Processing Sound
import processing.sound.*;

SoundFile palmas;
SoundFile silbido;
SoundFile uu;

// nombres de archivos de audio
String archivoPalmas = "palmas";
String archivoSilbido = "silbido";
String archivoUu = "uu";

// formato de archivos
String formato = ".wav";

void setup() {

  // crear lienzo
  size(500, 500);

  // fondo negro
  background(0);

  palmas = new SoundFile(this, archivoPalmas + formato);
  silbido = new SoundFile(this, archivoSilbido + formato);
  uu = new SoundFile(this, archivoUu + formato);
}

void draw() {
}

// esta funcion corre cuando se presiona una tecla
void keyPressed() {

  // si se presiona la tecla 1
  if (key == '1') {
    // reproducir archivo
    //argumentos son velocidad y volumen
    palmas.play(1.0, 1.0);
  }
  // si se presiona la tecla 2
  else if (key == '2') {
    // reproducir archivo
    silbido.play(1.0, 1.0);
  }
  // si se presiona la tecla 3
  else if (key == '3') {
   // reproducir archivo
    uu.play(1.0, 1.0);
    
  }
}
