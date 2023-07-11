"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// Operador Union
let cep;
cep = "12230-075";
cep = 12230075;
// Uso do Any
let naoSeiOTipo;
naoSeiOTipo = "String";
naoSeiOTipo = 10;
naoSeiOTipo = false;
// Tipar funções com retorno
function somar(x, y) {
    return `Total: ${x + y}`;
}
let resultado;
resultado = somar(15, 55);
console.log(resultado);
// Funções sem retorno
function digaOi(saudacao) {
    console.log(`Olá ${saudacao}`);
}
digaOi("Figueiredo");
