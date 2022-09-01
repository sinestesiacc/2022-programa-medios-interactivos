// ej_07_velocidad_samples
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

// nombres de archivos de audio
String archivoPalmas = "palmas";

// formato de archivos
String formato = ".wav";

// velocidad de reproduccion
float velActual = 0.0;

// velocidad minima, tiene que ser mayor que 0
float velMin = 0.1;

// velocidad maxima
float velMax = 10.0;

void setup() {

  // crear lienzo
  size(500, 500);

  // fondo negro
  background(0);
  
  // crear nuevo archivo de audio
  palmas = new SoundFile(this, archivoPalmas + formato);

  // loopear el sonido  
  palmas.loop();

}

void draw() {
  
  // obtener una velocidad entre velMin y velMax
  // segun posicion raton en eje X
  velActual = map(mouseX, 0, width, velMin, velMax);
  
  // forzar a valores minimos y maximos
  velActual = constrain(velActual, velMin, velMax);
  
  // cambiar la velocidad de reproduccion
  palmas.rate(velActual);
  
}
