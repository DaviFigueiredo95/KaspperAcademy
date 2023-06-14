package listas.principal;

import java.util.ArrayList;

public class TesteLista {
    public static void main(String[] args) {
        String disciplina1 = "JavaScript";
        String disciplina2 = "Banco de Dados";
        String disciplina3 = "Java";
        String disciplina4 = "Angular";

        ArrayList<String> disciplinas = new ArrayList<>();
        // Adicionar elementos no ArrayList
        disciplinas.add(disciplina1);
        disciplinas.add(disciplina2);
        disciplinas.add(disciplina3);
        System.out.println(disciplinas);
        disciplinas.add(0, disciplina4);
        System.out.println(disciplinas);

        // Remover elemento
        disciplinas.remove(2);
        System.out.println(disciplinas);

        // Acessando elementos
        String disciplinaSelecionada = disciplinas.get(2);
        System.out.println(disciplinaSelecionada);

        // 1ª Forma percorrendo o array
        for(int i = 0; i < disciplinas.size(); i++) {
            System.out.println(disciplinas.get(i));
        }

        // 2ª Forma lambda
        disciplinas.forEach(disciplina -> System.out.println(disciplina));
    }
}
