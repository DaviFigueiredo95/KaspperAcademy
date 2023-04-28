// Forma tradicional

const livro = {
    id: 1019,
    titulo: "Os guris da rua 3",
    statusVenda: true
}
//const id = livro.id;
//const titulo = livro.titulo;
//const statusVenda = livro.statusVenda;

// Desestruturando propriedades;
const {id, titulo, statusVenda} = livro;

console.log(`Informações do livro id: ${id} titulo: ${titulo} statusVenda: ${statusVenda}`);
console.log(livro);

// Customizando o nome dos atributos
const {id: idLivro} = livro;
console.log(idLivro);