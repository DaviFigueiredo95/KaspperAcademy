// Operador Ternário
// condicao ? expre1 : expre2

// 1 Variável Lógica
let condicao = false;
let resultado = condicao ? "Verdadeiro" : "Falso";
console.log(resultado);

// 2 Variável String
let investidor = "Conservador";
let retorno = investidor == "Conservador" ? "Ganha pouco e dorme tranquilo" : "Pode ganhar muito, mas não dorme";
console.log(retorno);

// 3 Variável numérica
let num1 = 2022;
let num2 = 2023;
let retorno1 = num1 > num2 ? num1 : num2;
console.log(`O número é ${retorno1}`);

// 4 Encadeando
let tipo = "Entrega";
let statusPgto = "Ok";
let situacao = (tipo == "Entrega" && statusPgto == "Ok") ? "Realizar entrega" : "Aguardando pagamento";
console.log(`Status pedido: ${situacao}`);
