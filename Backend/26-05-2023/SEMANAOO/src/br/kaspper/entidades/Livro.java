package br.kaspper.entidades;

public class Livro {
    
    private String autor;

    public Livro(String autor) {
        this.autor = autor;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public void emprestar(String titulo) {
        System.out.println("Livro emprestado: " + titulo + " - " + autor);
    }

}
