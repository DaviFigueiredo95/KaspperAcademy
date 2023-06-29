package br.kaspper.entidades;

public class ItemBiblioteca {
    
    private String titulo;

    public ItemBiblioteca(String titulo) {
        this.titulo = titulo;
    }

    public String getHistoria() {
        return titulo;
    }

    public void setHistoria(String titulo) {
        this.titulo = titulo;
    }

    public void emprestar() {
        System.out.println("Item emprestado: " + titulo);
    }
}
