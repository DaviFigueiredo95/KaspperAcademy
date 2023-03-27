let numero = [1, 2, 3, 4];

const clientes = [
  { nome: "Kaio", idade: 15 },
  { nome: "Maria", idade: 18 },
  { nome: "Jose", idade: 35 },
];

// Percorrer os clientes forEach()
clientes.forEach((cliente, index) => console.log(cliente));

// Exibindo os valores de cada objeto
clientes.forEach((cliente) =>
  console.log(`${cliente.nome} tem a idade de ${cliente.idade} anos`)
);

// Utilizando o método find()
let pesquisaa = clientes.find((cliente) => cliente.nome === "Maria");
console.log(pesquisaa);


// Utilizando o método map()
const clientesNovos = clientes.map((cliente) => {
    cliente.idade += 1;
    return cliente;
});
console.log(clientesNovos);


// Utilizando o método filter()
const clientesMaioresIdade = clientes.filter((cliente) => 
cliente.idade >= 18);
console.log(clientesMaioresIdade);