// Exercício 1

let numero1 = parseInt(prompt("Informe o primeiro número: "));
let numero2 = parseInt(prompt("Informe o segundo número: "));

if (numero1 < numero2) {
    console.log (numero2);
} else {
    console.log (numero1);
}


// Exercício 2

const aluno = {
    nome: prompt("Informe seu nome: "),
    nota1: parseFloat(prompt("Digite a primeira nota: ")),
    nota2: parseFloat(prompt("Digite a segunda nota: "))
}

let media = (aluno.nota1 + aluno.nota2) / 2;
console.log(`A média do ${aluno.nome} é: ${media}`);

if (media == 10) {
    console.log (`Aprovado com estrelinha!`);
} else if (media >= 7 && media < 10) {
    console.log (`Aprovado.`);
} else {
    console.log (`Reprovado! Estude mais.`);
}

console.log(aluno);