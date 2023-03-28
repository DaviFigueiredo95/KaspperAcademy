// 1) Some dois número em string e exiba-os concatenando;

let num1 = "6";
let num2 = "10";
let resultado3 = num1 + num2;

console.log(resultado3);

// 2) Do 1º exiba a soma como número;

let num01 = parseInt(num1);
let num02 = parseInt(num2);
let resultado03 = num01 + num02;

console.log(resultado03);

// 3) Verifique se um número é par ou é impar e exiba o resultado

if (resultado03 % 2 == 0) {
  console.log(`${resultado03} é um número PAR`);
} else {
  console.log(`${resultado03} é um número ÍMPAR`);
}
