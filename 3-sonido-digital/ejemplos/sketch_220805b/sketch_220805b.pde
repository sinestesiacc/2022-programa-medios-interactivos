// ejemplo traducido y basado
// de Sound=> SineWave

import processing.sound.*;

SinOsc oscilador;

float frecuencia = 440;
float amplitud = 0;


void setup() {
  size(500, 500);
  background(255);
  
  oscilador = new SinOsc(this);
  oscilador.play();
  
}

void draw() {
  frecuencia = map(mouseX, 0, width, 80, 1000);
  oscilador.freq(frecuencia);
  
  amplitud = map(mouseY, 0, height, 1.0, 0.0 );
  oscilador.amp(amplitud);
}
