// ej_05_microfono
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Processing 4.0.1
// ejemplo traducido y basado
// de Sound=> IO => AudioInput

// importar biblioteca Processing Sound
import processing.sound.*;

// entrada de sonido, microfono
AudioIn microfono;

// analizador de amplitud
Amplitude amp;

// variable para amplitud del microfono
float microfonoAmplitud = 0;

void setup() {

  // crear lienzo
  size(1024, 500);
  
  // sin borde
  noStroke();
  
  // relleno rojo
  fill(255, 0, 0);

  // crear una nueva instancia de AudioIn
  // y elegir el canal numero 0
  microfono = new AudioIn(this, 0);

  // empezar a capturar sonido
  microfono.start();

  // despues de usar start(), puedes usar los datos
  // si quieres escucharlo, debes usar play()
  // pero eso generara retroalimentacion peligrosa
  // solamente hacer eso con audifonos

  // usar constructor de analizador de amplitud
  amp = new Amplitude(this);

  //  // hacer que oscilador sea la entrada de los analizadores
  amp.input(microfono);
}

void draw() {

  // fondo blanco
  background(255);

  // analizar la amplitud y grabarla en la variable
  microfonoAmplitud = amp.analyze();

  // mapear el valor de microfonoAmplitud
  // con rango original entre 0.0 y 1.0
  // a rango de salida entre 1 y ancho del lienzo
  int tamano = int(map(microfonoAmplitud, 0.0, 1.0, 1, width));

  // dibujar elipse en el centro,
  // con tamano segun la amplitud de la entrada del microfono
  ellipse(width/2, height/2, tamano, tamano);
}
