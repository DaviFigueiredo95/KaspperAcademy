// Utilizando o LocalStorage
localStorage.setItem("nome", "Davi");
localStorage.setItem("cidade", "São José dos Campos");

// Recuperando informações do LocalStorage
const nome = localStorage.getItem("nome");
const cidade = localStorage.getItem("cidade");

console.log(`${nome} é de ${cidade}`);
