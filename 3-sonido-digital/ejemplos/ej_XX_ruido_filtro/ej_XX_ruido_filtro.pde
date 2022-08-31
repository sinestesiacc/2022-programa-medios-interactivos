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

// filtro pasabajos
LowPass pasabajos;

// frecuencia de corte
float frecuenciaCorte = 0;
float frecMin = 20;
float frecMax = 20000;

void setup() {
  
  size(500, 500);
  background(255);

  // instancia ruido blanco
  ruidoBlanco = new WhiteNoise(this);
  // amplitud de ruido blanco
  ruidoBlanco.amp(0.5);

  // instancia de filtro
  pasabajos = new LowPass(this);
  
  // hacer que el ruido suene
  ruidoBlanco.play();
  
  // hacer que el filtro pasabajos
  // tenga como entrada al ruido
  pasabajos.process(ruidoBlanco);
}

void draw() {
  
  // actualizar frecuencia de corte segun posX del raton
  frecuenciaCorte = map(mouseX, 0, width, frecMin, frecMax);
  
  // aplicar esa frecuencia de corte al filtro
  pasabajos.freq(frecuenciaCorte);

}
