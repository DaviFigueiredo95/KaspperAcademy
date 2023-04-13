// Declaração de um objeto
let produto = {
    nome: "Playstation 5", // string
    preco: 4700, // number
    calculaDesconto: function() { // método
        return this.preco * 0.05;
    }
};
console.log(produto.calculaDesconto());



let produto2 = {
    nome: "Nintendo Switch",
    preco: 2500,
    calculaDesconto: function() {
        return this.preco * 0.05;
    }
};

// Função que retorno um produto
function criarProduto(paramNome, paramPreco) {
    return {
        nome: paramNome,
        preco: paramPreco,
        calculaDesconto: function() {
            return this.preco * 0.05;
        }
    };
};
let produto3 = criarProduto("Super Nintendo, 1000");
let produto4 = criarProduto("Mega Drive, 800");
console.log(produto3.calculaDesconto());
console.log(produto4.calculaDesconto());