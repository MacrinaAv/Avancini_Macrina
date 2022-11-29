//
const fs = require('fs');
let rawdata = fs.readFileSync('C:/Users/avanc/Avancini_Macrina/Modulo05/TP_07/personas.json');
console.log(JSON.stringify(rawdata));
//JSON.parce() toma un archivo lo interpreta como JSON y lo traduce a JavaScript (lo estructutra, procesa)
//JSON.stringify() convierte a JSON .. como en este caso el archivo ya es JSON lo puede procesar.. aparecen los datos no procesados