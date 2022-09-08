// ej_11_ritmo_raton
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

Env envolvente;

float ritmoMin = 10.0;
float ritmoMax = 180.0;

// notas por minuto
float notasPorMinuto = ritmoMin;


float tiempoActual = 0;

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

  // cambiar frecuencia del oscilador
  oscilador.freq(220);

  oscilador.amp(1.0);

  envolvente = new Env(this);

  //actualizar tiempo inicial
  tiempoActual = millis();
}

void draw() {
  
  notasPorMinuto = map(mouseX, 0, width, ritmoMin, ritmoMax);

  float notasPorSegundo = notasPorMinuto / 60;
  float segundosPorNota = 1/notasPorSegundo;
  float msPorNota = 1000 * segundosPorNota;

  if (millis() - tiempoActual > msPorNota) {
    oscilador.play();
    envolvente.play(oscilador, 0.1, 0.1, 0.5, 0.1);
    tiempoActual = millis();
  }

  // fondo negro
  background(0);

}

void mousePressed() {
  oscilador.play();
  envolvente.play(oscilador, 0.01, 0.01, 0.5, 0.01);
}

//void keyPressed() {
//  if (key == ' ' && teclaPresionada == false) {
//    teclaPresionada = true;
//    println("tecla espacio presionada");
//  }
//}

//void keyReleased() {
//  if (key == ' ') {
//    tiempoInicioRelajo = millis();
//    teclaPresionada = false;
//    println("tecla espacio soltada");
//  }
//}
