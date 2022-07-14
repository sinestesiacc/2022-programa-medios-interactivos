# clase1

3.1 osciladores y filtros

jueves 01 septiembre 2022

hoy aprenderemos:

- bibliotecas y lenguajes de sonido digital
- biblioteca Sound de Processing
- osciladores
- filtros

## bibliotecas y lenguajes de sonido digital (15 min)

- Bela
- ChucK
- Csound
- FoxDot
- Max
- Mozzi
- p5.js sound
- Processing Sound
- Pure Data
- Sonic Pi
- SuperCollider
- Teensy
- Tidalcycles

## biblioteca Sound de Processing (15 min)

en este curso usaremos la biblioteca de sonido de Processing, que debemos instalar de la siguiente manera.

en inglés, tienes que ir a: Sketch -> Import Library -> Manage Libraries...

ahí podrás buscar la biblioteca Sound, cuyo autor es The Processing Foundation. En julio 2022 su versión actual es 2.3.1.

haz click en el botón de instalación y listo!

para comprobar que instalaste bien la biblioteca, abramos un ejemplo.

para eso, vamos en el menú a File -> Examples, y en la ventana con carpetas que aparece, ir a Libraries -> Sound -> Oscillators -> SineWave, y corremos ese ejemplo, el que debería hacer un sonido de onda sinusoidal, cuya frecuencia y amplitud son controladas por la posición del ratón.

la referencia de la biblioteca, con las variables y funciones que nos brinda, está documentada en https://processing.org/reference/libraries/sound/index.html

## osciladores

en esta clase consideraremos a los osciladores como los componentes básicos de la música digital.

las ondas clásicas que podemos hacer con esta biblioteca son sinusoidales, cuadradas, pulsos, diente de sierra y triangulares.

## sampleo y buffers

con esta biblioteca también podemos leer, cargar, escribir, modificar y reproducir archivos de audio.

un buffer es un espacio en memoria, como una variable, donde alojamos nuestro audio.

## filtros

los filtros nos permiten cambiar el contenido espectral del sonido.

con Processing Sound podemos crear filtros pasabajos, pasaaltos y pasabanda.
