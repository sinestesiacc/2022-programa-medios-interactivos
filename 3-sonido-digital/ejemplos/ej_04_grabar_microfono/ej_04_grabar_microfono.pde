import processing.sound.*;

AudioSample muestra;

Waveform onda;

int muestraMax = 44100;
int muestraActual = 0;

int resolucion = 1000;

int tiempoInicio = 0;
int tiempoAhora = 0;

AudioIn microfono;

void setup() {

  size(1024, 500);

  background(0);

  microfono = new AudioIn(this, 0);

  microfono.start();

  onda = new Waveform(this, muestraMax);

  onda.input(microfono);

  stroke(255);
  strokeWeight(2);
  noFill();
}


void draw() {
}


void mouseClicked() {
  
  background(0);
  
  tiempoInicio = millis();
  tiempoAhora = millis();
  println("tiempoInicio: " + tiempoInicio);
  while(tiempoAhora - tiempoInicio < 1000) {
    tiempoAhora = millis();
  }
  println("tiempoAhora: " + tiempoAhora);
  onda.analyze();

  beginShape();

  for (int i = 0; i < muestraMax; i++) {
    vertex(
      map(i, 0, muestraMax, 0, width),
      map(onda.data[i], -1, 1, 0, height));
  }

  endShape();
}
