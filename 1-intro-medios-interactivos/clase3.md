# clase3

1.3 modificación de imágenes y tipografía

jueves 28 julio 2022

hoy aprenderemos:

- texto en Processing
- tamaño de texto
- tipografías
- cargar imágenes

## enlaces a ejemplos de esta clase

- [ejemplos/ej_13_texto/](./ejemplos/ej_13_texto/)
- [ejemplos/ej_14_texto_tamano/](./ejemplos/ej_14_texto_tamano/)
- [ejemplos/ej_15_texto_tipografia/](./ejemplos/ej_15_texto_tipografia/)
- [ejemplos/ej_16_texto_rotacion/](./ejemplos/ej_16_texto_rotacion/)
- [ejemplos/ej_17_cargar_imagen/](./ejemplos/ej_17_cargar_imagen/)
- [ejemplos/ej_18_procesar_imagen/](./ejemplos/ej_18_procesar_imagen/)
- [ejemplos/ej_19_puntillismo_imagen/](./ejemplos/ej_19_puntillismo_imagen/)
- [ejemplos/ej_20_repetir_imagen/](./ejemplos/ej_20_repetir_imagen/)

## repaso clase pasada (15 min)

- variables y scope
- arreglos
- bucles for()
- funciones y argumentos
- exportar a archivos de imagen

## texto en Processing (15 min)

la función principal que usaremos para dibujar texto en nuestro lienzo es text(), que podemos llamar con estos 3 argumentos:

- string con el texto a escribir
- número para la posición en eje X
- número para la posición en eje Y

este texto es por defecto de color blanco, con borde negro, con una tipografía genérica sans-serif, con cierto tamaño y cierto alineamiento que podemos modificar.

## tamaño de texto (15 min)

podemos controlar el tamaño del texto con la función textSize(), que acepta un parámetro de número para especificar el tamaño.

otra opción de modificar tamaño, es no del texto en sí, pero de la caja contenedora donde se dibuja, lo que se puede hacer con text() y 2 parámetros adicionales para:

- tamaño caja contenedora en eje X
- tamaño caja contenedora en eje Y

## tipografías (15 min)

tipografía

cargar tipografías

## traslación y rotación en Processing (15 min)

como sabemos, en Processing contamos nuestro origen (0, 0) en la esquina superior izquierda, pero eso se puede modificar con la función translate(x, y), que nos permite modificar el origen.

nota: cada vez que nuestro bucle draw() termina, la traslación se anula, entonces no es acumulativa por cuadro.

## grabar y recuperar coordenadas con popMatrix y pushMatrix (15 min)

exportar a archivo .vlw con Processing 4

licencias de tipografías

## (15 min)

data/ folder

PImage imagen = loadImage("archivo.jpg");

image(img, 10, 20);
image(img, 10, 20, 30, 40);

tint();

loadPixels()

## (15 min)

## (15 min)

## (15 min)

## (15 min)

## (15 min)

## (15 min)

## bibliografía

- https://www.design-research.be/by-womxn/
- http://collletttivo.it/
- https://processing.org/examples/alphamask.html
- https://processing.org/examples/backgroundimage.html
- https://processing.org/examples/createimage.html
- https://processing.org/examples/loaddisplayimage.html
- https://processing.org/examples/transparency.html
