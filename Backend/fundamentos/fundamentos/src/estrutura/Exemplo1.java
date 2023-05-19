package estrutura;

public class Exemplo1 {
    public static void main(String[] args) {
        int contador = 0;

        while(contador < 5) {
            System.out.println("Contador: " + contador);
            contador++;
        }

        int contador2 = 0;

        do{
            System.out.println("Contador2: " + contador2);
            contador2++;
        } while (contador2 < 5);
    }
}
