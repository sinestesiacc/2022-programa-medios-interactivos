# clase1

3.1 osciladores y filtros

jueves 01 septiembre 2022

hoy aprenderemos:

- bibliotecas y lenguajes de sonido digital
- biblioteca Sound de Processing
- osciladores
- análisis de Fourier
- ruido
- filtros

## ejemplos de esta clase

- [ej_00_osciladores](./ejemplos/ej_00_osciladores)
- [ej_01_osciladores_raton](./ejemplos/ej_01_osciladores_raton/)
- [ej_02_osciladores_analizador](./ejemplos/ej_02_osciladores_analizador/)

## bibliotecas y lenguajes de sonido digital (15 min)

- Bela https://bela.io/
- ChucK https://chuck.cs.princeton.edu/
- Csound https://csound.com/
- FoxDot https://foxdot.org/
- Cycling74 Max https://cycling74.com/
- Mozzi https://sensorium.github.io/Mozzi/
- p5.js sound https://github.com/processing/p5.js-sound
- Processing Sound https://github.com/processing/processing-sound
- Pure Data https://puredata.info/
- Sonic Pi https://sonic-pi.net/
- SuperCollider https://supercollider.github.io/
- PJRC Teensy https://www.pjrc.com/
- TidalCycles https://tidalcycles.org/

## biblioteca Processing Sound (15 min)

en este curso usaremos la biblioteca de sonido de Processing, que debemos instalar de la siguiente manera.

en inglés, tienes que ir a: Sketch -> Import Library -> Manage Libraries...

ahí podrás buscar la biblioteca Sound, cuyo autor es The Processing Foundation. En julio 2022 su versión actual es 2.3.1.

haz click en el botón de instalación y listo!

para comprobar que instalaste bien la biblioteca, abramos un ejemplo.

para eso, vamos en el menú a File -> Examples, y en la ventana con carpetas que aparece, ir a Libraries -> Sound -> Oscillators -> SineWave, y corremos ese ejemplo, el que debería hacer un sonido de onda sinusoidal, cuya frecuencia y amplitud son controladas por la posición del ratón.

la referencia de la biblioteca, con las variables y funciones que nos brinda, está documentada en https://processing.org/reference/libraries/sound/index.html

## sonido analógico

el sonido es una vibración / oscilación. el sonido que escuchamos es una onda que se propaga a través de la atmósfera. esa onda es de cambios en presión atmosférica.

con nuestros oídos e incluso el resto de nuestro cuerpo podemos percibir vibraciones.

para hacer sonido, tenemos que ser capaces de mover aire. el sonido mientras se propaga por el aire, lo hace de forma radial en todas direcciones y a medida que viaja su energía se va disipando.

como el sonido es una magnitud física, podemos modelarla matemáticamente para entenderlo.

lo que hacemos, es fijar un punto (x, y, z) de escucha, nuestro oído o un micrófono, y medir la presión atmósferica en ese punto, como una función del tiempo, que podemos graficar.

## análisis de Fourier

Jean-Baptiste Fourier (1768 - 1830) fue un matemático y físico francés, cuyo apellido le da el nombre al análisis de Fourier y la transformada de Fourier, que son las bases del sonido digital como lo conocemos.

El análisis de Fourier, nos permite entre otras cosas, tomar una onda graficable x(t), y descomponerla como la suma de ondas sinusoidales. esto nos permite pensar en cualquier onda como una combinación de ondas sinusoidales, y a la inversa, si tenemos control sobre ondas sinusoidales, podemos construir cualquier sonido!

gracias al análisis de Fourier, podemos cambiar entre distintos dominios, podemos pensar en el sonido como una magnitud de presión atmosférica en el tiempo, o podemos analizar en cada ventana de tiempo, cuál es la combinación de ondas sinusoidales que nos permiten recrear ese sonido.

## ondas sinusoidales

una onda sinusoidal $A * sin ( 2 \cdot \pi \cdot f \cdot t + \phi)$ se puede describir con las siguientes 3 características:

- amplitud (A): la distancia entre su máximo y su mínimo.
- frecuencia (f): cuán frecuentemente alterna entre su máxima y mínima amplitud.
- fase ($\phi$): la distancia entre el origen del sistema de coordenadas y el cero.

cada una de estas descripciones matemáticas o físicas, que aplican a ondas sinusoidales, pero también a cualquier onda periódica que podemos escuchar, tiene una correspondencia sensorial así:

- la amplitud la percibimos como intensidad (o volumen).
- la frecuencia la percibimos como altura (o nota, en inglés pitch).
- la fase no somos capaz de percibirla en sí misma, solamente en combinación con más sonidos.

## osciladores (15 min)

en esta clase consideraremos a los osciladores como los componentes básicos de la música digital.

las ondas clásicas que podemos hacer con Processing Sound son sinusoidales, cuadradas, pulsos, diente de sierra y triangulares.

## ruido blanco (15 min)

antes de ver filtros, en vez de usar nuestro oscilador que hemos estado usando, introduciremos el concepto de ruido blanco.

el ruido blanco es el resultado de sumar todas las sinusoides posibles con igual probabilidad. el análisis de Fourier es una línea recta.

existen otros tipos de ruidos, como el ruido rosado o el ruido café, que veremos en otra clase.

usaremos este sonido rico en frecuencias, como un gran cubo de piedra, y usaremos los filtros para recortar frecuencias de este sonido y sentir sus efectos en los sonidos.

## definición de filtro y sabores de filtros

los filtros son efectos, a los cuales ingresa audio y sale audio.

son muy parecidos a una envolvente a un multiplicador, en el sentido de que son capaces de manipular la amplitud de la onda.

la gracia de los filtros es que no afectan a todo el sonido, pueden afectar al sonido dependiendo de las frecuencias que lo componen.

según su funcionamiento, reciben distintos nombres y poseen distintos parámetros. los más simples son:

- filtro pasabajos: tiene una frecuencia de corte, y todo las frecuencias bajo esa frecuencia de corte no son afectadas por el filtro, y todas las frecuencias arriba de la frecuencia de corte son atenuadas e incluso eliminadas.

- filtro pasaaltos: tiene una frecuencia de corte y un comportamiento inverso al filtro pasabajos, deja pasar todas las frecuencias sobre la de corte, y las que están bajo la frecuencia de corte son atenuadas o eliminadas.

otro filtro interesante es el filtro pasabanda, que tiene una frecuencia central, y un ancho de banda, y solamente deja pasar las frecuencias en torno a la frecuencia central, y el ancho de banda determina el alcance de eso. en guitarra eléctrico esto recibe el nombre de wah wah por el sonido que hace.

## sampleo y buffers

con esta biblioteca también podemos leer, cargar, escribir, modificar y reproducir archivos de audio.

un buffer es un espacio en memoria, como una variable, donde alojamos nuestro audio.
