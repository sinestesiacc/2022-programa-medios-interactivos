// ej_02_osciladores_analizador
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 agosto 2022
// hecho con Processing 4.0b9
// ejemplo traducido y basado
// de Sound => Analysis =>  FFTSpectrum

// importar biblioteca Processing Sound
import processing.sound.*;

// declarar instancia de oscilador
// SinOsc, Pulse, SawOsc, SqrOsc, TriOsc
Pulse oscilador;

// declarar instancia de analizador de amplitud
Amplitude amp;

// declarar instancia de analizador de frecuencia
// FFT es por Fast Fourier Transform
FFT fft;

// bandas para fft, tiene que ser multiplo de 2
int bandas = 1024;

// arreglo de float para almacenar espectro
float[] espectro = new float[bandas];

// variables para controlar la frecuencia
float frecuencia = 440;
float frecMin = 200;
float frecMax = 700;

// variable para la amplitud
float amplitud = 0.1;
float amplitudMin = 0.05;
float amplitudMax = 0.1;

void setup() {

  // crear lienzo
  size(1024, 500);

  // fondo negro
  background(0);
  
  // tamano del texto
  textSize(64);

  // alineamiento del texto
  textAlign(CENTER, CENTER);

  // usar constructor de SinOsc
  oscilador = new Pulse(this);

  // usar constructor de analizador de amplitud
  amp = new Amplitude(this);
  
  // usar constructor de analizador de frecuencia
  fft = new FFT(this, bandas);

  // calcular frecuencia aleatoria
  frecuencia = random(frecMin, frecMax);

  // reproducir oscilador
  oscilador.play();

  // hacer que oscilador sea la entrada de los analizadores
  amp.input(oscilador);
  fft.input(oscilador);
}

void draw() {

  // fondo blanco
  background(255);

  // calcular frecuencia segun posicion X del raton
  frecuencia = map(mouseX, 0, width, frecMin, frecMax);
  oscilador.freq(frecuencia);

  // calcular amplitud segun posicion Y del raton
  amplitud = map(mouseY, 0, height, amplitudMax, amplitudMin);
  oscilador.amp(amplitud);
  
  // imprimir en consola la amplitud actual
  println(amp.analyze());

  // realizar analisis de frecuencia
  // y guardar resultado en espectro
  fft.analyze(espectro);
  
  // borde rojo
  stroke(255, 0, 0);
  
  // dibujar lineas de cada espectro
  for (int x = 0; x < bandas; x++) {
    // linea va entre (x, height) o borde inferior del lienzo
    // y entre (x, altura proporcional a espectro)
    line(x, height, x, height - espectro[x] * height * 5);
  }
}
