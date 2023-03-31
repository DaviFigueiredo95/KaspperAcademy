// Utilizando o for
for (let i = 0; i < 10; i++) {
//  console.log(i);
}

// 2º exemplo
let numeros = [10, 222, 123, 423, 125];

for (let i = 0; i < numeros.length; i++) {
//  console.log(numeros[i]);
}


// for of
let animes = ["One Piece", "Naruto", "Yuyu Hakusho"];

for (const anime of animes) {
//    console.log(anime);
}

// for in
let personagem = {
    nome: "Ryu",
    especial: "Hadouken de fogo",
    skin: "roxo",
    dano: 45
};

for (const propriedade in personagem) {
    console.log(`${propriedade} : ${personagem[propriedade]}`);
}