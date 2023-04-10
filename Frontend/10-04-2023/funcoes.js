// Declaração
function ola() {
  console.log("Hello World utilizando função");
}
// Chamando a função
ola();

// 2ª expressão
const olaExpressao = function () {
  console.log("Olá expressão!");
};
// Chamando a função
olaExpressao();

// 3ª forma Arrow Functions
const numeroAleatorio = () => Math.random();

// Utilizando parâmetros (1F)
function digaOla(nome) {
  return `Olá ${nome}`;
}
// Chamando a função
console.log(digaOla("DaviFig"));

// Utilizando parâmetros usando a (3F)
const digaOlaAF = (nome) => `Olá ${nome}`;
console.log(digaOlaAF("Davi"));
