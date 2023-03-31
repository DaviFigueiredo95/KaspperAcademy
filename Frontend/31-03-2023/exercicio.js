// Exercicio usando switch

let usuario = "Desenvolvedor";

switch (usuario) {
    case "Admin":
        console.log("Admin: Acesso a todos os módulos.");
        break;

    case "Supervisor":
        console.log("Supervisor: Relatórios.");
        break;

    case "Desenvolvedor":
        console.log("Desenvolvedor: Todos os módulos e delete all tables do sistema.");
        break;

    case "Operador":
        console.log("Operador: Cadastros e movimentações.")
        break

    default:
        console.log("Usuário não cadastrado.")
}
