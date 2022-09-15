# clase1

3.3 protocolos MIDI y OSC

jueves 15 septiembre 2022

hoy aprenderemos:

- protocolo MIDI
- MIDI para notas
- MIDI para control de parámetros
- protocolo OSC

## ejemplos de esta clase

- [ej_14_midi_enviar/](./ejemplos/ej_14_midi_enviar/)
- [ej_14_midi_recibir/](./ejemplos/ej_14_midi_recibir/)
- [ej_15_arduino_enviar_numero/](./ejemplos/ej_15_arduino_enviar_numero/)
- [ej_15_processing_recibir_numero/](./ejemplos/ej_15_processing_recibir_numero/)
- [ej_15_processing_recibir_numero_enviar_midi/](./ejemplos/ej_15_processing_recibir_numero_enviar_midi/)
- [ej_15_pure_data_recibir_midi.pd](./ejemplos/ej_15_pure_data_recibir_midi.pd)
- [ej_16_osc_enviar_y_recibir/](./ejemplos/ej_16_osc_enviar_y_recibir/)
- [ej_17_osc_enviar/](./ejemplos/ej_17_osc_enviar/)
- [ej_17_osc_recibir/](./ejemplos/ej_17_osc_recibir/)

## instalación de bibliotecas

en esta clase usaremos estas dos bibliotecas:

- The MidiBus
- oscp5

las podemos instalar desde Processing -> Sketch -> Import Library -> Manage Libraries

opcionalmente, también podemos instalar el software Pd desde https://puredata.info/

## implementación MIDI

la unidad fundamental de información en un computador es un bit (del inglés "pedacito" o también dígito binario, del inglés "binary digit".

un bit es un componente eléctrico, que como un interruptor puede tener 2 estados, que son llamados de estas formas equivalentes:

- 0 / 1
- verdad / falso (true / false)
- prendido / apagado (on / off)
- 0V / 5V
- 0V / 3.3V

un bit solamente nos permite contar desde 0 a 1.

ya dijimos que con 7 bits podemos contar hasta 128, lo que es una buena resolución para definir eventos musicales en un piano.

también dijimos que necesitaremos especificar no solamente qué nota está siendo tocada, sino que también con qué volumen suena.

como 8 bits, también llamado 1 byte, es un múltiplo muy usado en computación para contar pedazos de información, se decidió usarlo para los mensajes musicales, y el bit extra se usa para hacer mensajes de este tipo:

1xxxxxxx 0xxxxxxx 0xxxxxxx

entonces en un mensaje MIDI, mandaremos mensajes de 3 bytes de largo = 24 bits.

pero cómo sabemos cuál es el primero? revisamos el primer bit de cada byte, y el que dice 1 es el primer byte, y los siguientes 2 que empiezan con cero son información adicional.

en general, los mensajes serán así:

1tttcccc 0ddddddd 0ddddddd

donde:

- ttt = tipo de mensaje, 3 bits => 8 tipos de mensaje
-

veamos 2 típicos mensajes MIDI y su composición.

## mensajes de notas MIDI

los mensajes de notas MIDI, dicen toda esta información:

- mensaje tipo nota encendida
- canal, entre 0 y 15
- nota a tocar, entre 0 y 127
- velocidad a tocar, entre 0 y 127

mensaje de nota encendida = 1001cccc 0nnnnnnn 0vvvvvvv

donde:

- 1001 es nota encendida
- cccc es canal, 4 bits => 16 opciones, 0 a 15
- nnnnnnn es nota, 7 bits => 128 opciones, 0 a 127
- vvvvvvv es velocidad, 7 bits => 128 opciones, 0 a 127

## mensajes de control MIDI

los instrumentos MIDI también tienen perillas que cambian el valor interno de variables o parámetros, y esos mensajes los podemos recibir y enviar, y dicen toda esta información:

- mensaje tipo control
- canal, entre 0 y 15
- número de controlador, entre 0 y 127
- valor del controlador, entre 0 y 127

mensaje de control = 1011cccc 0nnnnnnn 0vvvvvvv

donde:

- 1001 es mensaje de control (en inglés CC por control change)
- cccc es canal, 4 bits => 16 opciones, 0 a 15
- nnnnnnn es número de controlador, 7 bits => 128 opciones, 0 a 127
- vvvvvvv es valor de controlador, 7 bits => 128 opciones, 0 a 127

## protocolo OSC

el protocolo OSC envía mensajes en una dirección, por ejemplo: "/prueba"

podemos subanidar mensajes como si fueran carpetas o páginas web, por ejemplo "/prueba/hoy" y "prueba/manana".

esta estructura nos permite hacer árboles de decisión, donde por ejemplo solamente recibimos y reaccionamos a mensajes con cierta dirección o subdirección.

después de la dirección viene el mensaje, que puede ser un arreglo de distintas partículas de información. por ejemplo el mensaje que envía tres valores: un entero, un float, un string.

"/prueba/hoy 1 440.0 primero"

cada mensaje tiene que ser enviado y recibido desde un puerto.

en el computador o software que envía, tenemos que saber los siguientes parámetros:

- dirección IP donde queremos que llegue nuestro mensaje
- puerto por el cual enviar mensajes
- mensaje que enviar.

en el computador o software que recibe, lo que hacemos es abrir un puerto y poner atención a lo que recibimos, entonces solamente necesitamos:

- puerto a abrir para recibir mensajes.

## ventajas y desventajas de MIDI

MIDI sobresale cuando:

- estamos usando tecnología para sonido, por ejemplo lenguajes de programación para sonido, o hardware para sonido como sintetizadores o máquinas de ritmo
- queremos enviar mensajes con una resolución de 128 valores posibles
- queremos distribuir mensajes entre varios canales, hasta 16

MIDI no es una buena opción si:

- queremos una resolución de información mayor a 128 valores posibles
- queremos crear ruteos más complejos que 16 canales distintos, por ejemplo, anidar mensajes con encabezados

## ventajas y desventajas de OSC

OSC sobresale cuando:

- estamos usando tecnología de redes, con puertos abiertos y cerrados
- queremos enviar mensajes entre computadores
- queremos crear ruteos complejos de los mensajes enviados y recibidos
- queremos enviar muchos mensajes al mismo tiempo, de distintos tipos y resoluciones

OSC no es una buena opción si:

- queremos hacer un proyecto con un sistema de mensajes simples y estándar
- no queremos crear y definir un sistema de mensajería entre aplicaciones y/o computadores

## estrategias MIDI

- definir si usaremos mensajes de notas y/o mensajes de control
- definir para qué usaremos cada uno de los canales

## estrategias OSC

- definir si los mensajes se envian y reciben en un mismo computador, en varios en la misma red local, o a través de internet
- definir estructura de encabezados para enviar y recibir mensajes
- documentar y diagramar encabezados usados, rangos de valores, tipos de valores (float, int, String, etc)

## software adicional recomendado

- https://hexler.net/touchosc
