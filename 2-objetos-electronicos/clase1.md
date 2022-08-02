# clase 1

electrónica y programación con Arduino

jueves 4 agosto 2022

hoy aprenderemos:

- conceptos de interactividad física
- introducción a Arduino y componentes electrónicos
- programación en Arduino: Estructura y variables
- control digital y analógico circuito LED

## enlaces a ejemplos de esta clase

- [ejemplos/ej_00_primera_elipse/](./ejemplos/ej_00_primera_elipse/)
- [ejemplos/ej_01_colores_lienzo_fondo/](./ejemplos/ej_01_colores_lienzo_fondo/)
- [ejemplos/ej_02_puntos_lineas/](./ejemplos/ej_02_puntos_lineas/)
- [ejemplos/ej_03_elipse_rectangulo/](./ejemplos/ej_03_elipse_rectangulo/)
- [ejemplos/ej_04_bordes_rellenos/](./ejemplos/ej_04_bordes_rellenos/)
- [ejemplos/ej_05_condicionales/](./ejemplos/ej_05_condicionales/)

## programa y organización

- organización: https://github.com/sinestesiacc
- programa: https://github.com/sinestesiacc/2022-programa-medios-interactivos/
- berlin code of conduct: https://berlincodeofconduct.org/es/

## presentación de profesor y estudiantes

direcciones web:

- studio Sergio Mora-Diaz https://www.sergiomoradiaz.com/ 

organizaciones:

- Sinestesia Think and Do Tank https://www.sinestesia.cc/
- NYU ITP https://tisch.nyu.edu/itp
- CILUZ https://ciluz.cl/
- The New Media Art https://thenewmediaart.com/
- MANA https://www.manamana.net/
- Choreographic Coding Labs https://choreographiccoding.org/#/
- Derivative TouchDesiner https://derivative.ca/
- MadMapper https://madmapper.com/

## referentes y casos de estudio

- Golan Levin http://www.flong.com/
- Jen Lewin Studio https://www.jenlewinstudio.com/
- Danny Rozin http://www.smoothware.com/danny/
- Rafael Lozano-Hemmer https://www.lozano-hemmer.com/

## interacción y electrónica

- Interacción:

Proceso cíclico en el que dos actores alternativamente escuchan, piensan y hablan. (Chris Crawford, The Art of Interaction Design)

[ escuchar > pensar > hablar ] = [ input > procesamiento > output ]

- Electrónica

Emisión, flujo y control de los electrones. La electrónica permite el procesamiento digital de la información por la capacidad de los dispositivos de actuar como interruptores.

## descargar Arduino IDE y conectar placa

Trabajaremos con el software Arduino IDE, disponible para descarga en: https://www.arduino.cc/

Para el correcto uso de la placa Arduino con el chip CH340G, es necesario además descargar e instalar los drivers disponibles en:
http://www.wch-ic.com/downloads/CH341SER_ZIP.html (Windows) o http://www.wch-ic.com/downloads/CH341SER_MAC_ZIP.html (Mac).

## estructura de código

Las funciones principales en Arduino IDE son setup() y draw(), acompañadas de una sessión inicial donde declaramos variables.

```arduino
// declarar variables
int pinLed = 13; // led conectado en pin 13

void setup() {
  // configuracion
  pinMode(pinLed, OUTPUT); // configurar pin como salida
}

void loop() {
  // comportamiento
  digitalWrite(pinLed, HIGH); // encender el led
}
```
