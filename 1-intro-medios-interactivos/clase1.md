# clase1

1.1 fundamentos de programación en Processing

jueves 14 julio 2022

## programa y organización (15 min)

organización: https://github.com/sinestesiacc
programa: https://github.com/sinestesiacc/2022-programa-medios-interactivos/

## presentación estudiantes (30 min)

cada estudiante se presenta durante 60 segundos, respondiendo un subconjunto de las siguientes preguntas:

* nombre
* pronombre
* experiencia en programación
* por qué tomaste este programa de cursos de Sinestesia?

## presentación de profesor (15 min)

direcciones web:

* https://montoyamoraga.io/
* https://github.com/montoyamoraga/

organizaciones:

* NYU ITP https://tisch.nyu.edu/itp
* MIT Media Lab https://www.media.mit.edu/
* Opera of the Future https://www.media.mit.edu/groups/opera-of-the-future/
* Future Sketches https://www.media.mit.edu/groups/future-sketches/
* Processing Foundation https://processingfoundation.org/
* p5.js https://p5js.org/
* School of Machines, Making and Make-Believe https://www.schoolofma.org/
* Departamento de Diseño, Facultad de Arquitectura y Urbanismo, Universidad de Chile https://www.fau.uchile.cl/diseno

## referencias del módulo

* Visible Languages Workshop https://act.mit.edu/special-collections/vlw-archive/
* aesthetics + computation group https://acg.media.mit.edu/
* physical langauge workshop https://plw.media.mit.edu/

## sistemas numéricos (15 min)

* decimal: base 10
* binario: base 2
* hexadecimal: base 16

actividad: escribamos los primeros 21 números, empezando desde 0, usando los sistemas decimal, binario y hexadecimal.

## programación en Processing (15 min)

descargar Processing desde https://processing.org/

hagamos nuestro primer software

```processing
void setup() {
  size(500, 500);
}

void draw() {
  ellipse(250, 250, 100, 100);
}
```