package listas.principal;

public class TesteVetor {
    public static void main(String[] args) {
        String nomes[] = {"Jonh", "Paul", "Ringo", "George"};
        // Percorrendo o vetor de forma tradicional
        for(int i = 0; i < nomes.length; i++) {
            System.out.println(nomes[i]);
        }

        // 2ª forma de iterar um vetor
        for(String musico : nomes) {
            System.out.println(musico);
        }
    }
}
