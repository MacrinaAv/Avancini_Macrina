//PROGRAMA LECTOR JSON 1
const fs = require('fs');
let rawdata = fs.readFileSync('C:/Users/avanc/Avancini_Macrina/Modulo05/TP_07/personas.json');
let persona = JSON.parse(rawdata);
console.log(persona);