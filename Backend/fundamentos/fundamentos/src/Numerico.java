public class Numerico {
    public static void main(String[] args) {
        int idade = 17;
        int qtdAcompanhante = 2;
        // Operador condicional lógico if
        if(idade >= 18) {
            System.out.println("Você é de maior");
        } else {
            if(qtdAcompanhante >= 2) {
                System.out.println("Você é de menor, mas está acompanhado.");
            } else {
                System.out.println("Você é de menor");
            }
        }
    }
}
