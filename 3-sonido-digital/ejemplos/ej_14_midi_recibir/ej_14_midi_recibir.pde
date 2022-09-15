// ej_14_midi_recibir
// por montoyamoraga
// para Academia Sinestesia
// Programa de Medios Interactivos 2022
// v0.0.1 septiembre 2022
// hecho con Processing 4.0.1
// ejemplo traducido y basado
// de The MidiBus => Basic

// importar biblioteca
import themidibus.*;

// crear instancia de MidiBus
MidiBus bus;

int entradaMIDI = 1;
int salidaMIDI = -1;

int canalMIDI = 0;
int notaMIDI = 0;
int velocidadMIDI = 20;

void setup() {
  
  size(200, 200);

  // listar todos las midibus
  MidiBus.list();

  bus = new MidiBus(this, entradaMIDI, salidaMIDI);
  
  textAlign(CENTER, CENTER);
  fill(0);
}

void draw() {

  background(0, 255, 255);
  text("recibir", width/2, height/2);

}

void noteOn(int canal, int nota, int velocidad) {
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("canal: " + canal);
  println("nota: " + nota);
  println("velocidad:" + velocidad);
}
