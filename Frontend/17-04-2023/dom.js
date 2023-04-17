// Para manipular o DOM é preciso selecionar o objeto

// getElementsByTagName
let testeTags = document.getElementsByTagName('section');
// console.log(testeTags);

// document.write(testeTags[0].textContent);

// getElementsById 
let testeId = document.getElementById('tituloPrincipal');
//console.log(testeId);

// Alterando o conteúdo
testeId.innerText = "Alterando o DOM";

// getElementsByClassName
testeClass = document.getElementsByClassName('box');
console.log(testeClass);

// Percorrendo os elementos
for (let i = 0; i < testeClass.length; i++) {
    testeClass[i].innerText = `Percorrendo ${i}`;
};