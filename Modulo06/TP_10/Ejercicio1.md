 # a - Describe dos usos o funciones que proporciona la declaración DOCTYPE en una página web.

DOCTYPE indica qué tipo de documento debe abrir el navegador y qué sintaxis y gramática utiliza su código fuente.
La tarea de DOCTYPE html es explicar a los programadores y navegadores, a primera vista, de qué Document Type Definition (DTD) se trata y cómo debe renderizarse la web. El DTD indica qué lenguaje de código se utiliza en la página o en el documento HTML. Esto se aplica, por ejemplo, a los archivos HTML, XHTML, SVG, MathML o XML.
Si la web no tiene la etiqueta DOCTYPE, puede mostrar errores. El motivo es que los navegadores, a falta de la etiqueta <!DOCTYPE html> cambian automáticamente al “modo Quirks”. Con ello se pretende mantener la compatibilidad con versiones anteriores y la capacidad de visualización de las distintas páginas web sin el estándar de código actual. Al mismo tiempo, sin embargo, esto puede llevar a una visualización inexacta a pesar del código actual, ya que los navegadores se adhieren a elementos de código no válidos y obsoletos.
(fuente https://www.ionos.es/digitalguide/paginas-web/desarrollo-web/doctype-html/)


# b - Para que se utilizan las siguientes etiquetas:

*** <head> </head> *** indica la cabecera de la página
*** <title> </title> *** indica el título
*** <meta> *** Etiqueta usada para definir otros metadatos que no se pueden definir con una etiqueta HTML especifica. Por ejemplo para definir el autor del sitio, o la descripción del mismo.
*** <style> </style> *** Etiquetas usadas para introducir código CSS en línea, es decir, en el propio documento HTML.
*** <body> </body> *** Al contrario que la etiqueta de metadatos <head>, todo lo que quieras mostrar en la página web debe ir recogido dentro de las etiquetas de apertura y cierre de <body>. Este contenido será el que se muestre en la web.
*** <h1>,<h2>,<h3>,<h4>,<h5>,<h6> *** Son etiquetas HTML muy importantes, ya que son usadas para jerarquizar el contenido de la web. Las etiquetas se usan para explicar brevemente el contenido que irá a continuación.
*** <a> *** Etiqueta utilizada para crear hiperenlaces en el documento HTML
*** <strong> *** Etiqueta para definir una palabra o conjunto de ellas como importantes. Tiene una fuerte importancia en el SEO de la página.
*** <br> *** Etiqueta utilizada para crear un salto de línea
*** <ul> *** Etiquetas para crear una lista des-ordenada
*** <li> *** Etiquetas que recogen el contenido de un elemento de una lista, sea ordenada o no.
*** <p> *** Etiqueta usada para escribir párrafos de texto.
*** <span> ***  Etiqueta HTML sin ningún significado específico. Se usa conjuntamente con los atributos «class» o «id» para atribuirle ciertas características.
*** <table> </table> *** Etiquetas de apertura y cierre de una tabla. El resto de etiquetas de la tabla han de ir siempre recogidas entre estas dos etiquetas.
*** <tr> </tr> *** Se usa para indicar una fila de celdas de una tabla.
*** <td> </td> *** Usada para definir una celda de una tabla.
*** <img> *** Etiqueta para «pintar» una imagen en la página web.



# c- La etiqueta *** <script> *** puede ir dentro de las etiquetas de *** <body> *** o *** <head> *** , hay alguna diferencia donde pueda ir?
Puede ir dentro de cualquiera, generalmente es mejor colocarlo al final del body para que el cargado de la pagina no se detenga para llamar y/o ejecutar el script. Se puede colocar en head pero se ejecutara el scrip antes que cargue cualquier elemento de la pagina.