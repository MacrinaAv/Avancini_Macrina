const fs = require('fs');
const rawdata = fs.readFileSync('C:/Users/avanc/Avancini_Macrina/Modulo05/TP_07/departamentos.json', 'utf8')
var departamento = JSON.parse(rawdata);

//En esta resolución se podria obtener los datos de cualquier departamento solo colocando en i== el nombre del departamento deseado

for (var i in departamento.departamentos){ //for in ingresa a cada objeto
    //console.log(i) //muestra lod departamentos que esta identificando
    if (i== 'tecnologia'){ // si el objeto es tecnologia realiza lo siguiente
       //console.log(departamento['departamentos'][i].length); //cuantos elementos hay en el objeto tecnologia
       for (var a=0; a < departamento['departamentos'][i].length ; a++){
           //console.log(a); //número de objeto
            console.log(departamento['departamentos'][i][a]['nombre'],departamento['departamentos'][i][a]['puesto']); //muestra el nombre y puesto de cada elemento
       };
    };
    

}


//otra forma de resolverlo
/*
for(var i in departamento.departamentos.tecnologia){ //recorre los objetos del departamento tecnología
    console.log(departamento['departamentos']['tecnologia'][i]['nombre'],departamento['departamentos']['tecnologia'][i]['puesto']);
}
*/

//otra forma de resolverlo
/*
for(var i=0;i<departamento.departamentos.tecnologia.length;i++){//recorre los objetos del departamento tecnología
    console.log(departamento['departamentos']['tecnologia'][i]['nombre'],departamento['departamentos']['tecnologia'][i]['puesto']);
};
*/
