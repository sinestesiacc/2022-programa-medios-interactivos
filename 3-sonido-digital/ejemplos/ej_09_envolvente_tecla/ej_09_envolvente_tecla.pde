// ej_09_envolvente_tecla
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

float amplitudMin = 0.0;
float amplitudMax = 0.3;
float amplitudDelta = 0.0001;

float amplitudActual = amplitudMin;


float tiempoInicioRelajo;

boolean teclaPresionada = false;

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
  
  oscilador.amp(amplitudActual);
  
  oscilador.play();

}

void draw() {

  // fondo negro
  background(0);
  
  if (teclaPresionada) {
    amplitudActual = amplitudActual + amplitudDelta;
  }
  
  if (!teclaPresionada) {
    amplitudActual = amplitudActual - amplitudDelta;
  }
  
  if (amplitudActual > amplitudMax) {
    amplitudActual = amplitudMax;
  } else if (amplitudActual < amplitudMin) {
    amplitudActual = amplitudMin;
  }
  
  oscilador.amp(amplitudActual);
  
  println(amplitudActual);
  
    

  // texto con la frecuencia del oscilador
  text("frecuencia: " + frecuencia, width/2, 4*height/10);

  // texto con la amplitud del oscilador
  text("amplitud: " + amplitudActual, width/2, 6*height/10);
}

void keyPressed() {
  if (key == ' ' && teclaPresionada == false) {
    teclaPresionada = true;
    println("tecla espacio presionada");
  }
}

void keyReleased() {
  if (key == ' ') {
    tiempoInicioRelajo = millis(); 
    teclaPresionada = false;
    println("tecla espacio soltada");
  }
}
