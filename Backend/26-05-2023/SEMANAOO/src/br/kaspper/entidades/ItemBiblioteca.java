package br.kaspper.entidades;

public class ItemBiblioteca {
    
    private String historia;

    public ItemBiblioteca(String historia) {
        this.historia = historia;
    }

    public String getHistoria() {
        return historia;
    }

    public void setHistoria(String historia) {
        this.historia = historia;
    }

    public void emprestar() {
        System.out.println("Item emprestado: ");
    }
}
