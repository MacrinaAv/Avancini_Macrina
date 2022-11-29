'use strict';
const fs = require('fs');
fs.readFile('C:/Users/avanc/Avancini_Macrina/Modulo05/TP_07/personas.json', (err, data) => {
if (err) throw err;
console.log(JSON.parse(data));
});