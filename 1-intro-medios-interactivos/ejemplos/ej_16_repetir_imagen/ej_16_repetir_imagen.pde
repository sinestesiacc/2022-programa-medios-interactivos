// ej_20_repetir_imagen
// por montoyamoraga
// para Academia Sinestesia
// Programa Medios Interactivos 2022
// v0.0.1 julio 2022
// hecho con Processing 4.0b8

// este ejemplo usa las portadas de los dos primeros discos
// de Javiera Mena: Esquemas Juveniles y Mena

// variables para imagenes
PImage esquemas;
PImage mena;

// cantidad de imagenes a dibujar por cuadro
int repetirEsquemas = 2;
int repetirMena = 2;

// cuadros por segundo
int velocidad = 10;

void setup() {

  // lienzo ancho 800px alto 600px
  size(800, 600);

  // fondo blanco
  background(255);

  // cargar imagenes
  esquemas = loadImage("esquemas.jpg");
  mena = loadImage("mena.jpg");
  
  // modificar tasa de cuadros por segundo
  frameRate(velocidad);

}


void draw() {
  // dibujar cada imagen la cantidad de veces pedida
  repetirImagen(esquemas, repetirEsquemas);
  repetirImagen(mena, repetirMena);
}

// funcion que corre cuando se presiona una tecla
void keyPressed() {
  // si la tecla es b, borrar
  if (key == 'b') {
    // fondo negro
    background(0);
    // si la tecla es g, grabar cuadro
  } else if (key == 'g') {
    saveFrame("hola.jpg");
  }
}

// funcion para que una imagen sea dibujada en el lienzo
// cuantas veces queramos
void repetirImagen(PImage imagen, int repeticiones) {

  for (int i = 0; i < repeticiones; i++) {
    // grabar posicion actual de coordenadas
    pushMatrix();
    
    // ir a posicion aleatoria
    translate(random(width), random(height));
    
    // rotar angulo aleatorio, en radianes
    rotate(random(TWO_PI));
    
    
    // calcular nuevo ancho aleatorio
    float nuevoAncho = random(imagen.width);
    
    // calcular la altura correspondiente para mantener su razon ancho y altura
    float nuevaAltura = nuevoAncho * imagen.width / imagen.height;
    
    // poner la imagen en el orirgen, con la escala
    image(imagen, 0, 0, nuevoAncho, nuevaAltura);
    
    // restablecer sistema de coordenadas antiguo
    popMatrix();
  }
}
