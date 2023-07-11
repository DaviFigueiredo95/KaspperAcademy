"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// Operador Union
var cep;
cep = "12230-075";
cep = 12230075;
// Uso do Any
var naoSeiOTipo;
naoSeiOTipo = "String";
naoSeiOTipo = 10;
naoSeiOTipo = false;
// Tipar funções com retorno
function somar(x, y) {
    return "Total: ".concat(x + y);
}
var resultado;
resultado = somar(15, 55);
console.log(resultado);
// Funções sem retorno
function digaOi(saudacao) {
    console.log("Ol\u00E1 ".concat(saudacao));
}
digaOi("Davi");
