# clase2

3.2 envolventes y ritmos

jueves 08 septiembre 2022

hoy aprenderemos:

- teoría de envolventes AR y ASR
- envolventes ASR en Processing Sound con clase Env
- envolventes AR en Processing a mano
- ritmo en beats por minute
- introducción a teoría musical

## ejemplos de esta clase

- [ej_08_envolvente_asr/](./ejemplos/ej_08_envolvente_asr/)

## teoría de envolventes AR y ASR

hasta el momento hemos visto cómo crear sonidos con osciladores y filtros, cuyos parámetros son estáticos o controlados por ratón o teclado.

ahora aprenderemos a crear trayectorias para esos parámetros, con envolventes.

hasta el momento hemos trabajado con audio, que está normalizado, lo que significa que su amplitud máxima tiene magnitud 1.0. en lenguajes de programación el sonido es una onda, en torno a 0.0, con amplitud máxima 1.0 y mínima -1.0.

el audio digital que produce un oscilador o una grabación o el audio desde un micrófono ocurre entre esos valores: -1.0 y 1.0, y por eso se llama onda bipolar, porque ocurre a ambos lados positivo y negativos del 0.

en contraste, las envolventes son ondas unipolares, solamente con valores no negativos entre 0 y 1.0, y las usaremos para generar trayectorias de variación de parámetros.

las envolventes se usan típicamente para controlar el volumen de un oscilador, y podemos definir con un gesto como un click con el ratón o con el teclado, o con un sensor, cuándo la envolvente parte.

la envolvente más simple la llamaremos AR por la presencia de 2 parámetros:

- tiempo A del inglés attack, que se traduce generalmente como ataque, pero llamaremos arribo, para usar lenguaje no militarizado ni violento.
- tiempo R, del inglés release, que se traduce generalmente como relajo.

la coreografía de una envolvente es la siguiente:

- la envolvente emite el número 0.0, o está apagada.
- en algún momento, se la da una señal de inicio, para que la envolvente se prenda y empiece a emitir una trayectoria.
- la envolvente va desde su valor mínimo 0.0 a su valor máximo 1.0, y se demora el tiempo definido por su parámetro A.
- inmediatamente tras llegar a su valor máximo 1.0, desciende a su valor mínimo 0.0, y se demora el tiempo definido por su parámetro R.
- volvemos al primer paso, al volver a apagarse.

notar que no hemos hablado de la curva entre los valores mínimo y máximo, generalmente se implementa con una curva =lineal, exponencial o logarítmica.

notar que tampoco hemos dicho qué pasa si mientras la envolvente está prendida y funcionando, le llega otra señal de inicio, podemos elegir entre ignorarla o hacer que salte al inicio de su trayectoria y empiece de nuevo.

las envolventes AR son muy útiles para implementar sonidos percusivos, donde se le dice a un sonido que empiece y termine.

si queremos tener un comportamiento sonoro más complejo, por ejemplo, ser capaces de sostener el sonido indefinidamente por una cantidad de tiempo, podemos usar un parámetro extra llamado S:

- nivel S, del inglés sustain, traducido generalmente como sostenimiento.

este parámetro nos permite retardar el funcionamiento de la sección R (relajo) de la onda, con la siguiente coreografía:

- la envolvente emite el número 0.0, o está apagada.
- en algún momento, se la da una señal de inicio, para que la envolvente se prenda y empiece a emitir una trayectoria.
- la envolvente va desde su valor mínimo 0.0 a su valor máximo S, y se demora el tiempo definido por su parámetro A.
- la envolvente se queda en su valor máximo S, hasta que recibe una señal de apagado.
- inmediatamente tras recibir la señal de apagado, desciende a su valor mínimo 0.0, y se demora el tiempo definido por su parámetro R.
- volvemos al primer paso, al volver a apagarse.

en el contexto de un sintetizador podemos hacer que el accionar de una tecla, elija dos cosas: la frecuencia base del sonido, y también el momento en que iniciamos esta envolvente.

así, podemos hacer que nuestro oscilador tenga un sonido distinto, dependiendo de los parámetros de esta envolvente, y de lo que estamos controlando con esta envolvente.

usaremos como arquitectura de síntesis, un teclado que controla la frecuencia del oscilador y que activa las envolventes.

el oscilador entra a un filtro, cuya frecuencia de corte está controlada por una envolvente AR y la salida del filtro está conectada a un VCA, cuya amplitud está controlada por una envolvente ASR.

- envolventes ASR en Processing Sound con clase Env
- envolventes AR en Processing a mano
- ritmo en beats por minute
- introducción a teoría musical
