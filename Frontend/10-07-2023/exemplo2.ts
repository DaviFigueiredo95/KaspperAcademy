import { FindCursor } from "mongodb";

// Operador Union
let cep: string | number;
cep = "12230-075";
cep = 12230075;

// Uso do Any
let naoSeiOTipo: any;
naoSeiOTipo = "String";
naoSeiOTipo = 10;
naoSeiOTipo = false;

// Tipar funções com retorno
function somar(x:number, y:number):string {
    return `Total: ${x + y}`;
}
let resultado:string;
resultado = somar(15, 55);
console.log(resultado);

// Funções sem retorno
function digaOi(saudacao:string):void {
    console.log(`Olá ${saudacao}`);
}
digaOi("Figueiredo");