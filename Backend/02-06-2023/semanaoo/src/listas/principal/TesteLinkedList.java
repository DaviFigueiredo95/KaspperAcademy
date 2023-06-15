package listas.principal;

import java.util.LinkedList;

public class TesteLinkedList {
    public static void main(String[] args) {
        LinkedList<String> nomes = new LinkedList<String>();

        // Adicionar elementos
        nomes.add("Goku");
        nomes.add("Gohan");
        nomes.add("Vegeta");
        nomes.add("Bulma");

        // Recuperar elementos
        String bulma = nomes.get(3);
        System.out.println("Nome: " + bulma);

        // Remover elementos da lista
        nomes.remove(2);

        // Iterando sobre a lista
        for(String nome : nomes) {
            System.out.println(nome);
        }

        // (Ponto positivo) na inserção e remoção de elementos o LinkedList é mais eficiente que o ArrayList
        // (Ponto negativo) na recuperação do elemento
    }
}
