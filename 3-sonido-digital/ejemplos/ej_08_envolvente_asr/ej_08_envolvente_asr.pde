// ej_08_envolvente_asr
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Processing 4.0.1
// ejemplo traducido y basado
// de Sound=> Env => Envelopes

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

// declarar instancia de envolvente
Env envolvente;

// variable para controlar la frecuencia
float frecuencia = 110;

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
  size(800, 500);

  // relleno blanco
  fill(255);

  // tamano del texto
  textSize(64);

  // alineamiento del texto
  textAlign(CENTER, CENTER);

  // usar constructor de SinOsc
  oscilador = new SinOsc(this);

  // usar constructor de Env
  envolvente = new Env(this);

  // cambiar frecuencia del oscilador
  oscilador.freq(frecuencia);
}

void draw() {

  // fondo negro
  background(0);
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
