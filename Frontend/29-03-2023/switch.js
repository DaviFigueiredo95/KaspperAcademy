// Com booleano

let logado = true;

switch (logado) {
  case true:
    console.log("Usuário logado");
    break;

  case false:
    console.log("Usuário não autenticado");
}

// com string

let mes = "Dezembro";

switch (mes) {
    case "Janeiro":
    case "Fevereiro":
    case "Março":
        console.log("1º Trimestre");
        break;

    case "Abril":
    case "Maio":
    case "Junho":
        console.log("2º Trimestre");
        break;
    default:
        console.log("Fora do período letivo");
}


// Laço

for (let i = 0; i <= 9; i ++) {
    console.log(i);
}