public class Caracteres {
    public static void main(String[] args) {
        // char
        char letra = 'a';
        System.out.println(letra);

        char valor = 65;
        System.out.println(valor);

        // Casting = conversão ou moldagem
        // Não compila valor = valor + 1;
        valor = (char) (valor + 1);
        System.out.println(valor);
    }
}
