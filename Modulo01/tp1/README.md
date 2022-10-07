# **CURSO PROGRAMACIÓN WEB FULL STACK** 
# **NIVEL 2**
### Ejercicio 1:
a) Abrir el editor HTML.<br />
b) Archivo Nuevo.<br />
c) Copiar el código que empieza por <!DOCTYPE html> siguiente.<br />
d) Menú... Archivo... Guardar como: Ejercicio1.html<br />
e) Abrir el archivo Ejercicio1.html en el navegador<br />
f) Después del primer mensaje, se debe mostrar otro mensaje que diga "Soy el primer script"<br />
g) Agregar comentarios que expliquen el funcionamiento del código.<br />
`<!DOCTYPE html>` <br />
`<html>`<br />
`<head>`<br />
`<title>Ejercicio 1 </title>`<br />
`</head>`<br />
`<body>`<br />
`<script>`<br />
`document.writeln("Hola Mundo!");`<br />
`</script>`<br />
`</body>`<br />
`</html>`<br />

### Ejercicio 2:
Copiar el siguiente código dentro de un archivo, luego guardarlo con el nombre: <br />
“Ejercicio2.html”. Ejecuta el programa en el navegador. <br />
`<!DOCTYPE html>`<br />
`<html>`<br />
`<body>`<br />
`<script>`<br />
`let A, B;`<br />
`A = 9;`<br />
`B = 7;`<br />
`resultado = A + B;`<br />
`alert ("La suma de A+B es: ${resultado} " );`<br />
`alert ("La diferencia de A-B es: ${A-B} " );`<br />
`alert ("La multiplicación de AxB es: ${A*B} " );`<br />
`alert ("La división de A/B es: ${resultado=A/B} " );`<br />
`</script>`<br />
`</body>`<br />
`</html>`<br />

### Ejercicio 3:
Copiar el siguiente código dentro de un archivo, luego guardarlo con el nombre: <br />
“Ejercicio3.html”. Ejecuta el programa en el navegador.<br />
`<!DOCTYPE html>`<br />
`<html>`<br />
`<body>`<br />
`<script>`<br />
`et num1=0;`<br />
`let num2=0;`<br />
`num1 = num1 + 3;`<br />
`num2 = num2 + 7;`<br />
`alert ("El primer numero ahora es ${num1} ");`<br />
`alert ("El segundo numero ahora es ${num2} " );`<br />
`</script>`<br />
`</body>`<br />

### Ejercicio 4:
Copiar el siguiente código dentro de un archivo, luego guardarlo con el nombre:<br/>
“Ejercicio4.html”. Ejecuta el programa en el navegador<br/>
`<html>`<br />
`<body>`<br />
`<script type="text/javascript">`<br />
`const A = "Hola";`<br />`
let B = " mundo!";`<br />`
document.write("Constante A contiene " + A );`<br />`
document.write("</br>");`<br />`
document.write("Variable B contiene " + B );`<br />`
document.write("</br>");``<br />`
`</script>`<br />
`<p>El signo '+' sirve para concatenar cadenas de texto</p>`<br />
`</body>`<br />

### Ejercicio 5:
Copiar el siguiente código dentro de un archivo, luego guardarlo con el nombre:<br />
Ejercicio5.html’. Ejecuta el programa en el navegador.<br />
Obs: El siguiente código tiene un error, para corregirlo se debe depurar el código en el
navegador.<br/>
Depurar con chrome: https://developer.chrome.com/docs/devtools/javascript/<br/>
`<!DOCTYPE html>`<br />
`<html><body>`<br />
`<script type="text/javascript">`<br />
`let a, b;`<br />
`a = 3; b = 7;`<br />
`resultado = a * b;`<br />
`document.write("Variable a contiene ${a} <br>  ");`<br />
`document.write("Variable b contiene ${b} <br>  ");`<br />
`document.write("El producto de a por b es ${result}");`<br />
`</script>`<br />
`<p>Los puntos de interrupción son fundamentales para programar</p>`<br />
`</body>`<br />
`<html>`<br />

### Ejercicio 6:
Crear un array llamado “dias” y que almacene el nombre de los siete días de la semana. <br />
Mostrar por pantalla los siete nombres utilizando la función console.log().

### Ejercicio 7:
Ejecutar el programa en el navegador. Guardarlo con el nombre: Ejercicio7.html’ Pasar
valores por teclado. Anotar con comentarios que hace el programa.

`<!DOCTYPE html>`<br />
`<html>`<br />
`<body>`<br />
`<script>`<br />
`let dato, resultado;`<br />
`val1 = window.prompt("Introduce tu nombre", "...");`<br />
`val2 = window.prompt("Introduce tu apellido", "...");`<br />
`resultado = "Concatenado tu nombre y apellido es: ${val1} ${val2} " ;`<br />
`document.write(resultado);`<br />
`</script>`<br />
`</body>`<br />
`</html>`<br />

### Ejercicio 8:
Copiar el siguiente código dentro de un archivo, luego guardarlo con el nombre:
Ejercicio8.html’. Ejecuta el programa en el navegador.


`<!DOCTYPE html>`<br />
`<html>`<br />
`<head><meta charset="utf-8"></head>`<br />
`<body>`<br />
`<script>`<br />
`let val1, val2, num1, num2;`<br />
`val1 = window.prompt("Introduce primer número ?", "0");`<br />
`num1 = parseInt(val1); // El método parseInt analiza un valor como una`<br />
`cadena y devuelve el primer entero.`<br />
`https://www.w3schools.com/jsref/jsref_parseint.asp`<br />
`val2 = window.prompt("Introduce segundo número ?", "0");`<br />
`num2 = parseInt(val2);`<br />
`let resultado = num1 + num2;`<br />
`document.write("<br/> <br/> La suma es ${resultado}  ");`<br />
`</script>`<br />
`<p>Para sumar, las variables deben ser numéricas.</p>`<br />
`</body>`<br />
`</html>`<br />

### Ejercicio 9:
Crear un archivo: Ejercicio9.html’. Declarar un array llamado “vocales” con las 5 letras.<br />
Luego se deben imprimir en el navegador uno debajo de otro.

### Ejercicio 10:
Crear un archivo: Ejercicio10.html’ Declarar un array llamado “meses” y que tenga
guardado los meses del año. Luego el usuario debe poder tipear en el navegador un
número de 1 al 12 y este le devolverá el nombre del mes. Por ejemplo escribe 5 debe
devolver el mes mayo
