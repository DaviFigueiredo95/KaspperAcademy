// Trabalhando com arrays

let array = ["string", 10, false];
console.log(array);

let clientes = ["Bill", "Steve", "Goku"];
// acessar o índice
console.log(clientes[2]);


// manipulando o array
// adicionando um elemento novo
clientes.push("Vegeta");
console.log(clientes);

// remover um elemento (primeiro elemento)
clientes.shift();
console.log(clientes);

// adiciona um elemento no início
clientes.unshift("Bob", "Patrick");
console.log(clientes);

// tamanho do array
console.log(clientes.length)
