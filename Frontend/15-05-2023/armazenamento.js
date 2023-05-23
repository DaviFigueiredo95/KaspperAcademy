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

// Trabalhando com Cookies
function setCokies(nome, valor, expericao) {
    const dataExpiracao = new Date();
    dataExpiracao.setTime(dataExpiracao.getTime() + expiracao * 24 + 60 * 60 * 1000);
    const dataExpiracaoS = dataExpiracao.toUTCString();
    document.cookie = `${nome}=${encodeURIComponent(valor)}; expires=${dataExpiracaoS}; path=/`;
}

// Exemplo de uso
setCookie("curso", "JavaScript", 30);

// Tarefa: pesquisa como recuperar um cookie

// Exemplo de um carrinho
const carrinho = JSON.parse(localStorage.getItem("carrinho")) || [];
// Adicionar um produto no carrinho
const novoItem = {
    nome: "Cadeira",
    qtd: 1,
    valor: 250.99
}

carrinho.push(novoItem);

localStorage.setItem("carrinho", JSON.stringify(carrinho));
// Recuperando o carrinho
const carrinhoS = JSON.parse(localStorage.getItem("carrinho")) || [];

// Exibir o conteúdo
carrinhoS.forEach(item => {
    console.log(`Produto: ${item.nome} | Quantidade: ${item.qtd} | Valor: ${item.valor}`)
});