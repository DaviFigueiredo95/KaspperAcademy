package br.kaspper.principal;

import br.kaspper.entidades.Livro;
import br.kaspper.entidades.Revista;

public class TesteBiblioteca {
    public static void main(String[] args) {
        
        Livro livro = new Livro("Pai Rico Pai Pobre", "Robert Kiyosaki");
        Revista revista = new Revista("Veja", 2023);

        livro.emprestar();
        revista.emprestar();

    }
}
