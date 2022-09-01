// ej_04_ruido_filtro
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Processing 4.0.1
// ejemplo traducido y basado
// de Sound => Effects => LowPassfilter

// importar biblioteca Processing Sound
import processing.sound.*;

// ruido blanco
WhiteNoise ruido;

// filtro pasabajos
LowPass pasabajos;

// frecuencia de corte
float frecuenciaCorte = 0;
float frecMin = 20;
float frecMax = 20000;

void setup() {
  
  // tamano del lienzo
  size(500, 500);
  
  // pintar fondo negro
  background(0);

  // instancia ruido blanco
  ruido = new WhiteNoise(this);
  // amplitud de ruido blanco
  ruido.amp(0.5);

  // instancia de filtro
  pasabajos = new LowPass(this);
  
  // hacer que el ruido suene
  ruido.play();
  
  // hacer que el filtro pasabajos
  // tenga como entrada al ruido
  pasabajos.process(ruido);
  
  // configuracion texto
  textSize(32);
  textAlign(CENTER, CENTER);
}

void draw() {
  
  // pintar fondo negro
  background(0);
  
  // actualizar frecuencia de corte segun posX del raton
  frecuenciaCorte = map(mouseX, 0, width, frecMin, frecMax);
  
  // aplicar esa frecuencia de corte al filtro
  pasabajos.freq(frecuenciaCorte);
  
  // escribir frecuencia de corte en el lienzo
  text(frecuenciaCorte, width/2, height/2);

}
