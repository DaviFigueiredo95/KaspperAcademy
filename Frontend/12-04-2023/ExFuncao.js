// Exercício de Funções
// 1
function mensagem() {
  console.log("Abril de 2023 é TOP!!!");
}
mensagem();



// 2
const retangulo = function (base, altura) {
  let area = base * altura;
  console.log(
    `O calculo da área do retangulo é: base = ${base} * altura = ${altura}. Portanto a área é igual a: ${area}`
  );
};
retangulo(6, 16);



// 3
const circulo = (raio) => {
  return Math.PI * raio;
};
console.log(circulo(1));
