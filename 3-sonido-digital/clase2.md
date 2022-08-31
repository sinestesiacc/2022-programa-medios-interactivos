# clase2

3.2 envolventes y ritmos

jueves 08 septiembre 2022

hoy aprenderemos:

- envolventes AR
- envolventes ADSR

## ejemplos de esta clase

## envolventes

hasta el momento hemos visto cómo crear sonidos con osciladores y filtros, cuyos parámetros son estáticos o controlados por ratón o teclado.

ahora aprenderemos a crear trayectorias para esos parámetros, con envolventes.

para empezar, estudiaremos la envolvente más clásica de sintetizadores, llamada ADSR por:

- A: attack, arribo
- D: decay, decaimiento
- S: sustain, sostenimiento
- R: release, relajación

en el contexto de un sintetizador podemos hacer que el accionar de una tecla, elija dos cosas: la frecuencia base del sonido, y también el momento en que iniciamos esta envolvente.

así, podemos hacer que nuestro oscilador tenga un sonido distinto, dependiendo de los parámetros de esta envolvente, y de lo que estamos controlando con esta envolvente.

usaremos como arquitectura de síntesis, un teclado que controla la frecuencia del oscilador y que activa las envolventes.

el oscilador entra a un filtro, cuya frecuencia de corte está controlada por una envolvente AR y la salida del filtro está conectada a un VCA, cuya amplitud está controlada por una envolvente ADSR.
