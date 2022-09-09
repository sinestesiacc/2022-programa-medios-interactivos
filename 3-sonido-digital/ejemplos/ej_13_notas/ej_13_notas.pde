// ej_13_notas
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Processing 4.0.1
// ejemplo traducido y basado
// de Sound => Analysis =>  BeatDetection

// importar biblioteca Processing Sound
import processing.sound.*;

float frecNotaABase = 13.75;
float frecNotaAIndice = 9;
float frecMultiplicador = pow(2, 1.0/12.0);

float[] notas = new float[128];

// declarar instancia de oscilador
SinOsc oscilador;

// declarar instancia de envolvente
Env envolvente;

// variables para controlar la frecuencia
float frecuencia = 0;

// variable para la amplitud
float amplitud = 0.1;

int notaActual = 0;

// variables para la envolvente
// tiempos en segundos
float tiempoA = 3.0;
float tiempoR = 0.5;
// nivel entre 0.0 y 1.0
float nivelS = 0.5;
// en Processing tenemos que decidir la duracion de S
float duracion = 2.0;

// variable para decidir que tecla activa la envolvente
char teclaPresionar = 'x';

// variable para detectar entre tecla sin presionar,
// tecla cuando se presiona, y tecla mientras se presiona
boolean presionando = false;


void setup() {

  // crear lienzo
  size(500, 500);

  // fondo negro
  background(0);

  // tamano del texto
  textSize(64);

  // alineamiento del texto
  textAlign(CENTER, CENTER);

  // usar constructor de SinOsc
  oscilador = new SinOsc(this);

  // usar constructor de Env
  envolvente = new Env(this);

  for (int i = 0; i < notas.length; i++) {
    notas[i] = frecNotaABase * pow(frecMultiplicador, i - 9);
  }

  oscilador.amp(amplitud);

  oscilador.play();
}

void draw() {

  // fondo negro
  background(0);

  frecuencia = notas[notaActual];

  oscilador.freq(frecuencia);

  // texto con la frecuencia del oscilador
  text("frecuencia: " + frecuencia, width/2, 4*height/10);

  // texto con la amplitud del oscilador
  text("amplitud: " + amplitud, width/2, 6*height/10);

  notaActual = notaActual + 1;
  notaActual = notaActual % notas.length;
}


void keyPressed() {
  if (key == teclaPresionar && !presionando) {
    presionando = true;
    oscilador.play();
    envolvente.play(oscilador, tiempoA, duracion, nivelS, tiempoR);
  }
}

void keyReleased() {
  if (key == teclaPresionar) {
    presionando = false;
  }
}
