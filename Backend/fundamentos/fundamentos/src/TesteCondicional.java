public class TesteCondicional {
    public static void main(String[] args) {
        int idade = 15;
        boolean acompanhado = true;
        //Operador lógico && (e) || (ou)
        if(idade >= 18 && acompanhado) {
            System.out.println("Pode entrar!");
        } else {
            System.out.println("Não pode entrar");
        }
    }
}
