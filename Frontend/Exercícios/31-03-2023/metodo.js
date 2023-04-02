// 5 MÉTODOS de string javascript

// 1) length - comprimento de string
var metodo = "JavaScript";
console.log(metodo.length);
// Aqui ele retorna o número "10", pois é a quantidade de caracteres que a palavra "javascript" possui.
// Isso é útil por vários motivos; por exemplo, você pode querer encontrar os comprimentos de uma série de nomes para que você possa exibi-los em ordem de comprimento.



// 2) [] "colchete" - retorna um caractere específico de string
console.log(metodo[4]);
// Chamar a variável e acrescentar o [] em seguida, com um número dentro, ele retorna a letra correspondente da sequência. Neste caso retorna a letra "s", não esquecendo que a contagem é a partir do 0, não 1.
// Pode usar isso para, por exemplo, encontrar a primeira letra de uma série de strings e ordená-los alfabeticamente.



// 3) indexOf() - encontrando uma substring dentro de uma string e extraindo-a
console.log(metodo.indexOf("Script"));
// Isso retornou o resultado "4", porque a substring "script" se inicia na posição 4 dentro de "javascript".
// Esse código poderia ser usado para filtrar cadeias de caracteres. Por exemplo, podemos ter uma lista de endereços da web e apenas queremos imprimir aqueles que contenham "javascript".



// 4) toLowerCase() e toUpperCase() - mudando entre maiúsculas e minúsculas
console.log(metodo.toLowerCase());
console.log(metodo.toUpperCase());
// toLowerCase() deixa todas as letras minúsculas e, toUpperCase() deixa todas em maiúsculas.
// Este pode ser util, por exemplo, se você quer normalizar todas as entradas de dados do usuário antes de armazenar em um banco de dados.



// 5) replace() - atualizando ou trocando partes de uma string
console.log(metodo.replace("Java", "Type"));
// Com o replace(), que recebe dois parâmetros onde o primeiro é parte da nossa string atual que quer trocar e, o segundo pelo qual queremos atualizar. Neste caso nossa variável era "JavaScript", e passou a ser "TypeScript".



// Fonte: developer.mozilla.org