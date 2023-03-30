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
    nota1: parseInt(prompt("Digite a primeira nota: ")),
    nota2: parseInt(prompt("Digite a segunda nota: "))
}

let media = aluno.nota1 + aluno.nota2 / 2;

if (media == 10) {
    console.log (`O aluno, ${aluno.nome} foi Aprovado com estrelinha`);
} else if (media >= 7) {
    console.log (`Sua nota foi: ${media}, está aprovado.`);
} else {
    console.log (`Sua nota foi: ${media}, está reprovado`);
}

console.log(aluno);