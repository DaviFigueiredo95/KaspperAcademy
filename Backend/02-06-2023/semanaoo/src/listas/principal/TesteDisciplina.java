package listas.principal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

import listas.entidades.Disciplina;

public class TesteDisciplina {
    public static void main(String[] args) {
        ArrayList<Disciplina> disciplinas = new ArrayList<Disciplina>();
        disciplinas.add(new Disciplina("Java", 60));
        disciplinas.add(new Disciplina("JavaScript", 40));
        disciplinas.add(new Disciplina("Cobol", 100));

        System.out.println(disciplinas);

        Collections.sort(disciplinas);
    }
}
