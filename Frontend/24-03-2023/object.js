// Utilizando o tipo object
const cliente = {
  nome: "Goku da Silva",
  idade: 50,
  ativo: true,
  endereco: {
    rua: "7 de Setembro",
    numero: 349,
    bairro: "Yoki",
  },
  filhos: ["Gohan", "Goten"],
};
console.log(cliente);

// Exibindo uma propriedade específica do objeto
console.log(cliente.nome);

console.log(cliente["endereco"]);

console.log(cliente.endereco);

console.log(cliente.endereco.rua);

