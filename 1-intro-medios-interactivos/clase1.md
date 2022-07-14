# clase1

1.1 fundamentos de programación en Processing

jueves 14 julio 2022

hoy aprenderemos:

- contexto artes mediales y Processing
- funciones básicas de Processing: setup() y draw()
- tamaño y color del lienzo: size() y background()
- figuras geométricas: point(), line(), ellipse() y rect()
- escala de grises, color RGB y transparencia alphas

## programa y organización (15 min)

- organización: https://github.com/sinestesiacc
- programa: https://github.com/sinestesiacc/2022-programa-medios-interactivos/

## presentación estudiantes (15 min)

cada estudiante se presenta durante 60 segundos, respondiendo un subconjunto de las siguientes preguntas:

- nombre
- pronombre
- experiencia en programación
- por qué tomaste este programa de cursos de Sinestesia?

## presentación de profesor (15 min)

direcciones web:

- https://montoyamoraga.io/
- https://github.com/montoyamoraga/

organizaciones:

- NYU ITP https://tisch.nyu.edu/itp
- MIT Media Lab https://www.media.mit.edu/
- Opera of the Future https://www.media.mit.edu/groups/opera-of-the-future/
- Future Sketches https://www.media.mit.edu/groups/future-sketches/
- Processing Foundation https://processingfoundation.org/
- p5.js https://p5js.org/
- School of Machines, Making and Make-Believe https://www.schoolofma.org/
- Departamento de Diseño, Facultad de Arquitectura y Urbanismo, Universidad de Chile https://www.fau.uchile.cl/diseno

## sistemas numéricos (15 min)

- decimal: base 10
- binario: base 2
- hexadecimal: base 16

un número como 123,456 en decimal

lo descomponemos como 1*$10^{2}$ + 2*$10^{1}$ + 3*$10^{0}$ + 4*$10^{-1}$ + 5*$10^{-2}$ + 6*$10^{-3}$

| base 10 | base 2 | base 16 |
| ------- | ------ | ------- |
| 00      | 00000  | 00      |
| 01      | 00001  | 01      |
| 02      | 00010  | 02      |
| 03      | 00011  | 03      |
| 04      | 00100  | 04      |
| 05      | 00101  | 05      |
| 06      | 00110  | 06      |
| 07      | 00110  | 07      |
| 08      | 01000  | 08      |
| 09      | 01001  | 09      |
| 10      | 01010  | 0A      |
| 11      | 01011  | 0B      |
| 12      | 01100  | 0C      |
| 13      | 01101  | 0D      |
| 14      | 01110  | 0E      |
| 15      | 01110  | 0F      |
| 16      | 10000  | 10      |
| 17      | 10001  | 11      |
| 18      | 10010  | 12      |
| 19      | 10011  | 13      |
| 20      | 10100  | 14      |
| 21      | 10101  | 15      |
| 22      | 10110  | 16      |
| 23      | 10111  | 17      |

## convenciones en programación (15 min)

- en programación, contamos desde 0, por ejemplo si hay 3 elementos, son 0, 1, 2.

- en este curso no usaremos espacios para nombres de carpetas, archivos o variables, en vez de eso, usaremos distintas estrategias:

  - usaremos guiones "-", guiones bajos "\_" para nuestros archivos y carpetas.
  - las variables de nuestro código estarán escritas en notación camello: donde escribimos todas las palabras juntas sin espacios, la primera es todo con minúsculas, y después cada palabra adicional empieza con mayúscula, por ejemplo estaPalabraEstaEscritaEnNotacionCamello.

- generalmente los espacios entre palabras importan, pero no importa cuánto espacio hay, el computador los omite, pero son muy importantes para que nuestro código sea legible y esté formateado de una manera legible.

## descargar Processing y nuestro primer bosquejo

descargar Processing desde https://processing.org/

en julio 2022 está disponible la versión 4.0 beta 8, publicada en abril 2022.

copien este bosquejo y péguenlo en la ventana de Processing.

```processing
void setup() {
  size(500, 500);
}

void draw() {
  ellipse(250, 250, 100, 100);
}
```

## condiciones iniciales y de refresco con setup() y draw() (15 min)

las funciones más centrales que usaremos en Processing son setup() y draw.

setup() corre una vez y al principio, y la usaremos para definir las condiciones iniciales del bosquejo, como el tamaño de nuestro lienzo.

draw() corre después de setup(), en bucle y hasta que cerremos la aplicación. sirve para refrescar el bosquejo, para hacer animaciones cuadro a cuadro.

setup() y draw() son funciones, que son colecciones de instrucciones de código que siguen la siguiente sintaxis cuando son declaradas:

```processing
tipo nombre(arg0, arg1, ...) {
  // linea
  // otra linea
  // etc
}
```

donde tipo nos indica el tipo de dato que la función emite tras finalizar, puede ser número, palabra, o nada "void".

en nuestros códigos de este curso siempre declararemos las funciones setup() y draw(), que son llamadas y corridas por Processing de forma automática.

## tamaño y color del lienzo con size() y background() (15 min)

en Processing trabajaremos con un lienzo, y ese lienzo necesita ser creado con la función size() o tamaño en español, con esta sintaxis.

a diferencia de setup() y draw(), size(ancho, alto) necesita dos argumentos numéricos que especifican el tamaño en pixeles. además no necesitamos declararlos, solamente usarlas.

- size(ancho, alto): crea una ventana con el ancho y alto determinado en pixeles.

para pintar el lienzo de un color, usaremos la función background(color), donde color podrá tomar distintas formas:

- si usamos 1 número, será interpretado como escala de grises.
- si usamos 2 números, será interpretado como escala de grises y transparencia.
- si usamos 3 números, serán interpretados como canales RGB (rojo, verde, azul).
- si usamos 4 números, serán interpretados como canales RGB y transparencia.

donde:

- en escala de grises: 0 es negro, 255 es blanco.
- transparencia: 0 es invisible, 255 es sólido.
- RGB: 0 es nada de ese color, 255 es todo de ese color.

## figuras geométricas: point(), line(), ellipse() y rect() (30 min)

- point(posX, posY): crea un punto en la posición (posX, posY).

- line(posX1, posY1, posX2, posY2): crea una línea entre los puntos (posX1, posY1) y pos(X2, Y2).

- rect(posX, posY, ancho, alto): crea un rectángulo donde su

- ellipse(posX, posY, ancho, alto): crea una elipse en la posición (posX, posY) y con las dimensiones ancho y alto medidas en pixeles.

## escala de grises, color RGB y transparencia alphas (30 min)

Processing entiende color como un valor de 8-bits, valores entre 0 y 255.

la función stroke() permite colorear los bordes de los trazos de las figuras

la función fill() permite colorear los rellenos de las figuras

dependiendo de cuántos números usamos para describir el color, tendremos distintos resultados:

- 1 número: escala de grises, donde 0 es negro y 255 es blanco
- 2 números, escala de grises y transparencia alpha, donde alpha=0 es transparente, y alpha=sólido
- 3 números, canales RGB por rojo, verde, azul
- 4 números, RGBA, RGB + transparencia alpha

si usamos dos números, se entienden como escala de grises y transparencia alpha

## biliografía:

- https://processing.org/
  - https://processing.org/reference/
  - https://processing.org/tutorials/
  - https://processing.org/examples/
  - https://processing.org/books/
- Visible Languages Workshop https://act.mit.edu/special-collections/vlw-archive/
- aesthetics + computation group https://acg.media.mit.edu/
- physical langauge workshop https://plw.media.mit.edu/
