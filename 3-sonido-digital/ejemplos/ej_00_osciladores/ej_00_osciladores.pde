// ej_00_osciladores
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Processing 4.0.1
// ejemplo traducido y basado
// de Sound=> SineWave

// importar biblioteca Processing Sound
import processing.sound.*;

// declarar instancia de oscilador
// SinOsc es una clase o molde
// oscilador es una instancia hecha con este molde
// dentro de esta instancia hay metodos o funciones
// y propiedades o variables
SinOsc oscilador;

// ademas de SinOsc existen otros tipos de osciladores:
// Pulse, SawOsc, SqrOsc, TriOsc

// variables para controlar la frecuencia
float frecuencia = 440;
float frecMin = 200;
float frecMax = 700;

// variable para la amplitud
float amplitud = 0.1;

void setup() {

  // crear lienzo
  size(800, 500);

  // relleno blanco
  fill(255);

  // tamano del texto
  textSize(64);

  // alineamiento del texto
  textAlign(CENTER, CENTER);

  // usar constructor de SinOsc
  oscilador = new SinOsc(this);

  // calcular frecuencia aleatoria
  frecuencia = random(frecMin, frecMax);

  // cambiar frecuencia del oscilador
  oscilador.freq(frecuencia);

  // cambiar amplitud del oscilador
  oscilador.amp(amplitud);

  // reproducir oscilador
  oscilador.play();
}

void draw() {

  // fondo negro
  background(0);

  // texto con la frecuencia del oscilador
  text("frecuencia: " + frecuencia, width/2, 4*height/10);

  // texto con la amplitud del oscilador
  text("amplitud: " + amplitud, width/2, 6*height/10);
}
