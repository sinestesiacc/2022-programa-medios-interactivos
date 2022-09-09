// ej_09_envolvente_tecla
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Processing 4.0.1

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

// variables para controlar la amplitud
float amplitudMin = 0.0;
float amplitudMax = 0.3;
float amplitudDelta = 0.001;
float amplitudActual = amplitudMin;

// variable para decidir cuando empieza el relajo R
float tiempoInicioRelajo;

// variable para detectar tecla sin presionar o presionada
boolean teclaPresionada = false;
// variable para definir cual tecla controla el sonido
char teclaSonido = 'x';


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
  
  // hacer que oscilador suene
  oscilador.play();

}

void draw() {

  // fondo negro
  background(0);
  
  // detectar si la tecla fue presionada
  if (teclaPresionada) {
    // si fue presionada, aumentar
    amplitudActual = amplitudActual + amplitudDelta;
  }
  
  // detectar si la tecla no esta presionada
  if (!teclaPresionada) {
    // disminuir la amplitud actual
    amplitudActual = amplitudActual - amplitudDelta;
  }
  
  // si la amplitud es mayor que la maxima permitida
  if (amplitudActual > amplitudMax) {
    // hacer que sea el maximo
    amplitudActual = amplitudMax;
  }
  // si la amplitud es menor que el minimo permitido
  else if (amplitudActual < amplitudMin) {
    // hacer que sea el minimo
    amplitudActual = amplitudMin;
  }
  
  // cambiar la amplitud del oscilador
  oscilador.amp(amplitudActual);
 
  // texto con la frecuencia del oscilador
  text("frecuencia: " + frecuencia, width/2, 4*height/10);

  // texto con la amplitud del oscilador
  // usamos nf(float, numeros enteros, numeros decimales)
  // para truncar el numero
  text("amplitud: " + nf(amplitudActual, 1, 4), width/2, 6*height/10);
}

// funcion que corre cuando se detecta una tecla presionada
// dependiendo del sistema operativo, puede repetirse muy seguido
// si mantienes presionada una tecla
void keyPressed() {
  // detectar si la tecla presionada es la buscada
  // y si antes no ha sido presionada
  if (key == teclaSonido && teclaPresionada == false) {
    // hacer que esta boolean sea true
    // para senalar que la tecla fue presionada
    teclaPresionada = true;
    println("tecla espacio presionada");
  }
}

// funcion que corre cuando una tecla es presionada
void keyReleased() {
  // si la tecla es la que hace el sonido
  if (key == teclaSonido) {
    // grabar valor false en esta boolean
    // para permitir que vuelva a poder iniciar el sonido
    teclaPresionada = false;
    println("tecla espacio soltada");
  }
}
