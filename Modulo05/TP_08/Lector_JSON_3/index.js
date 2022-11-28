//Programa lector JSON 3 asincronico
const fs = require('fs');
const rawdata = fs.readFileSync('C:/Users/avanc/Avancini_Macrina/Modulo05/TP_07/personas.json','utf8');
var persona = JSON.parse(rawdata);
for(var i=0;i<persona['personas'].length;i++){
console.log(persona['personas'][i]['nombre']);
}
