package estrutura;

import java.util.zip.Deflater;

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

        // Laço utilizando o for
        for(int i = 0; i < 5; i++) {
            System.out.println("i: " + i);
        }

        //System.out.println(i);

        // Switch
        int opcao = 3;

        switch(opcao) {
            case 1:
                System.out.println("Opção 1 selecionada");
                break;
            case 2:
                System.out.println("Opção 2 selecionada");
                break;
            case 3:
                System.out.println("Opção 3 selecionada");
                break;
            default:
                System.out.println("Outra opção selecionada!");
        }
    }
}
