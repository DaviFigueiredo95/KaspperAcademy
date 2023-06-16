package listas.principal;

import java.util.LinkedList;
import listas.entidades.Pessoa;
import java.util.Collections;
import java.util.Comparator;

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


        LinkedList<Pessoa> pessoas = new LinkedList<Pessoa>();
        pessoas.add(new Pessoa("Paul Stanley", 60));
        pessoas.add(new Pessoa("Ace Freeley", 55));
        pessoas.add(new Pessoa("Eric Cars", 57));
        pessoas.add(new Pessoa("Gene Simons", 65));

        // Ordenando a lista de Pessoas
        // Collections.sort(pessoas, new Comparator<Pessoa>() {
        //     @Override
        //     public int compare(Pessoa pessoa1, Pessoa pessoa2) {
        //         return pessoa1.getIdade() - pessoa2.getIdade();
        //     }
        // });

        // Ordenar utilizando expressão lambda

        

        for(Pessoa pessoa : pessoas) {
            System.out.println(pessoa);
        }



    }
}
