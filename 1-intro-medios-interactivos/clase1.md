# clase1

1.1 fundamentos de programación en Processing

jueves 14 julio 2022

## programa y organización (15 min)

* organización: https://github.com/sinestesiacc
* programa: https://github.com/sinestesiacc/2022-programa-medios-interactivos/

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

## convenciones en programación (15 min)

* en programación, contamos desde 0. por ejemplo si hay 3 elementos, son 0, 1, 2.

* para escribir nombres compuestos por mas de una palabra, usaremos notación camello, donde escribimos todas las palabras juntas sin espacios, la primera es todo con minúsculas, y después cada palabra adicional empieza con mayúscula, por ejemplo estaPalabraEstaEscritaEnNotacionCamello.

* generalmente los espacios entre palabras importan, pero no importa cuánto hay, el computador los omite, pero son muy importantes para que nuestro código sea legible.

## programación en Processing (15 min)

descargar Processing desde https://processing.org/

hagamos nuestro primer bosquejo

```processing
void setup() {
  size(500, 500);
}

void draw() {
  ellipse(250, 250, 100, 100);
}
```

revisemos qué significa cada una de estas líneas de código, palabras clave, y estructuras.

estructuras:

* función: es una colección de instrucciones de código, que tienen la siguiente sintaxis:

```Processing
tipoRetorno nombre(arg0, arg1, ...) {
  // linea
  // otra linea
  // etc
}
```

donde tipoRetorno nos indica el tipo de dato que la función emite tras finalizar, puede ser número, palabra, o nada "void".

palabras:

* void: significa vacío, indica que estas funciones tras funcionar, no emiten ningún resultado.

funciones de Processing:

* size(ancho, alto): crea una ventana con el ancho y alto determinado en pixeles.
* ellipse(posX, posY, ancho, alto): crea una elipse en la posición (posX, posY) y con las dimensiones ancho y alto medidas en pixeles.