//
'use strict';
let jsonData = require('C:/Users/avanc/Avancini_Macrina/Modulo05/TP_07/personas.json');
console.log(JSON.stringify(jsonData)); 
//a) en este caso JSON.stringify() lo combierte nuevamente en JSON

console.log(JSON.parse(jsonData));
//b) como jsonData ya esta en formato JavaScript no lo reconoce