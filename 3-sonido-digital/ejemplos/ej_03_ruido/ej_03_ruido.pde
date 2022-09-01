// ej_03_ruido
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Processing 4.0.1
// ejemplo traducido y basado
// de Sound => Noise => NoiseSpectrum

// importar biblioteca Processing Sound
import processing.sound.*;

// ruido blanco
WhiteNoise ruido;
// o ruido cafe
// BrownNoise ruido;
// o ruido rosado
// PinkNoise ruido;

// analisis
FFT fft;
int bandas = 512;

void setup() {

  size(500, 500);

  // instancia ruido blanco
  ruido = new WhiteNoise(this);
  // o instancia ruido cafe
  // ruido = new BrownNoise(this);
  // o instancia ruido rosado
  // ruido = new PinkNoise(this);

  // crear un objeto Sound para caracteristicas globales
  Sound sonido = new Sound(this);
  
  // bajar el volumen de salida
  sonido.volume(0.1);
 
  // no hacemos esto porque esto hace que el volumen baje
  // y a su vez la altura del espectro
  // ruido.amp(0.2);

  // reproducir ruido
  ruido.play();

  // instancia de analizador
  fft = new FFT(this, bandas);
  
  // entrada del analizador es el ruido
  fft.input(ruido);
  
  // relleno rojo
  fill(255, 0, 0);
  // sin borde
  noStroke();
}

void draw() {

  // fondo rojo
  background(0, 255, 0);

  //analizar espectro de frecuencia
  fft.analyze();


  // calcular el ancho de cada banda
  float anchoBanda = width / float(bandas);

  // ir por cada banda
  for (int i = 0; i < bandas; i++) {
    // dibujar un pequeno rectangulo por cada banda
    // segun el espectro
    rect(i * anchoBanda, height, anchoBanda, -fft.spectrum[i] * height);
  }
}
