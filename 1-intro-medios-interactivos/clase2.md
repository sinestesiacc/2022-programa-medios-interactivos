# clase2

1.2 dibujo programático

jueves 21 julio 2022

hoy aprenderemos:

- repaso clase pasada
- variables y scope
- arreglos
- bucles for()
- funciones y argumentos
- exportar a archivos de imagen

## enlaces a ejemplos de esta clase

- [ej_06_tres_elipses](./ejemplos/ej_06_tres_elipses/)
- [ej_07_tres_elipses_variables](./ejemplos/ej_07_tres_elipses_variables/)
- [ej_08_tres_elipses_arreglos](./ejemplos/ej_08_tres_elipses_arreglos/)
- [ej_09_variables_scope/](./ejemplos/ej_09_variables_scope/)
- [ej_10_bucles_for](./ejemplos/ej_10_bucles_for/)
- [ej_11_tres_elipses_funcion/](./ejemplos/ej_11_tres_elipses_funcion/)
- [ej_12_exportar_lienzo/](./ejemplos/ej_12_exportar_lienzo/)

## repaso clase pasada (15 min)

conceptos importantes:

- Processing 4 y Java
- funciones setup() y draw()
- funciones size() y background()
- figuras ellipse() y rect()
- color en Processing

## dibujo de 3 elipses (15 min)

en el ejemplo asociado dibujamos 3 elipses, cada una con un color de relleno distinto, y una posición distinta.

## dibujo de 3 elipses con variables (15 min)

las variables nos permiten tener valores que podemos cambiar.

también nos permiten generar reacciones en cascada en nuestro código.

## variables y scope (15 min)

podemos declarar las variables en 2 lugares distintos:

- variables globales: existen fuera de todo lobque de código, y todo el resto del código tiene acceso a estas variables.
- variables locales: solamente existen dentro del bloque de código que las contiene, por ejemplo, dentro de la función setup().

## dibujo de 3 elipses con arreglos (15 min)

un arreglo nos permite crear un grupo variables que comparten un nombre.

esto es muy importante para poder hacer iteraciones, y poder rápidamente hacer lo que los computadores hacen muy bien: repetir.

## iteración con bucles for (15 min)

ya vimos un bucle en Processing, que es la función draw(), que Processing se encargar de correrla periódicamente para animar nuestros dibujos.

un clásico de programación es el llamado bucle for(), que se construye de la siguiente manera en Java:

```processing
for (int i = 0; i < 4; i++) {
  println(i);
}
```

sabemos que las líneas de código en Processing terminan en punto y coma ";", y dentro de los paréntesis del bucle, tenemos 2, que delimitan las 3 distintas pequeńas líneas de código que viven ahí:

1. declaración de variable de iteración: int i = 0
2. condición de continuar dentro del bucle: i < 4
3. refresco que ocurre cada vez que termina el bucle: i++

como es muy usual aumentar o disminuir en 1 el valor de un número entero, en los lenguajes de programación hay atajos para esto, que son equivalentes, como:

- i = i + 1; equivale a i++;
- i = i - 1; equivale a i--;

## pausa (15 min)

## declarar funciones (15 min)

cuando escribimos suficiente código que queremos reutilizar, podemos encapsularlo en nuestra propia función, que podemos correr en cualquier momento, y con distintos argumentos para lograr distintos resultados.

```processing
void dibujarLineaAleatoria(float posXMax, float posYMax, float maxAncho) {
    stroke(random(maxAncho));
    line(random(posXMax), random(posYMax));
}
```

la primera palabra en este ejemplo es void ( del inglés "vacío"), que indica que la función tras correr, no arroja ningún resultado. los otros tipos posibles con int, float, String, char, y cualquier otro tipo de datos que tenga el lenguaje.

después usamos una palabra como "dibujarLineaAleatoria", que nos permite darle un nombre reconocible a la función, para poder usarla en el código cuando queramos.

después entre paréntesis(), podemos opcionalmente agregar argumentos. si lo hacemos, debemos declarar su tipo y nombre, con el que podremos referirnos dentro de la función.

luego dentro de las llaves {} podemos escribir el código que correrá cada vez que llamemos a nuestra función.

## exportar nuestro lienzo (15 min)

Processing siempre tiene un estado actual del lienzo que podemos grabar.

para eso, recomendamos usar la función saveFrame(), que toma el contenido actual del lienzo y lo graba con el nombre que tenemos.

podemos hacer que el resultado de esto sea una imagen .jpg u otro formato, con un nombre estático. también podemos usar gatos #### que al exportar son reemplazados con el número actual del cuadro del lienzo, permitiéndonos así generar secuencias de imágenes.

## estrategias de dibujo programático (15 min)

podemos dibujar con distintos enfoques, por ejemplo, dejando que el tiempo transcurra, o creando servidores web que nos permitan leer tendencias en Twitter que controlen nuestro dibujo, o incluso sensores y algoritmos de inteligencia artificial que detecten nuestra pose y con eso dibujar.

antes de tomar ese rumbo, cuando estamos aprendiendo, es bueno usar los rudimentos de programación interactive que nos dan los llamados HID, por sus siglas en inglés de Human Interface Device o dispositivos de interfaz humana, que en nuestro caso serán nuestro ratón y teclado.

con nuestro ratón podemos:

- detectar click en distintos botones
- detectar velocidad o ritmo entre clicks
- detectar posición del cursor en XY, quizás Z?

con nuestro teclado podemos:

- detectar el presionar de distintas teclas
- detectar secuencias de teclas en el tiempo
- detectar rapidez entre repeticiones o patrones de teclas
- detectar mayúsculas o minúsculas

## subir nuestro propio código a GitHub (15 min)

hagamos inicio de sesión en GitHub.

vayamos a la web del repositorio de la clase.

hay 3 opciones:

1. están atrás ("behind") del repositorio, o sea que han habido cambios en el original, que su repositorio todavía no tiene. Para aceptar esos cambios, hacemos click en "Fetch upstream", y en el botón verde "Fetch and merge". Tras esto, el repo dirá "This branch is up to date with sinestesiacc/2022-programa-medios-interactivos:main."
2. ustedes están adelante, y pueden contribuir al repositorio, con el botón "Contribute" que les permite crear una "pull request", para proponer al repo de la clase a que incorpore sus cambios.
3. están exactamente igual que el repo original, y dirá "up to date", o sea, no estarán ni adelante ni atrás :)

## bibliografía (15 min)

- https://www.patatap.com/
- https://www.programmingdesignsystems.com/
- https://en.wikipedia.org/wiki/Human_interface_device
- https://musiclab.chromeexperiments.com/
- https://learningmusic.ableton.com/
