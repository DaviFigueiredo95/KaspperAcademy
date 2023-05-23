// Utilizando o LocalStorage
localStorage.setItem("nome", "Davi");
localStorage.setItem("cidade", "São José dos Campos");

// Recuperando informações do LocalStorage
const nome = localStorage.getItem("nome");
const cidade = localStorage.getItem("cidade");

console.log(`${nome} é de ${cidade}`);


// Salvar um objeto
const produto = {
    nome: "Notebook",
    preco: 3500,
    marca: "Positivo"
}

localStorage.setItem("produto", JSON.stringify(produto));

// Recuperando um objeto

const produtoRecuperadoS = localStorage.getItem("produto");
console.log(produtoRecuperadoS);

const produtoRecuperadoO = JSON.parse(produtoRecuperadoS);

console.log(produtoRecuperadoO);


// Armazenamento com Session

sessionStorage.setItem("jogo", "Mortal Kombat 12");
console.log(sessionStorage.getItem("jogo"));