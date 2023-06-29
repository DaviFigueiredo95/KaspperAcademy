package br.kaspper.entidades;

public class Revista extends ItemBiblioteca {
    
    private int edicao;
    
    public Revista(String titulo, int edicao) {
        super(titulo);
        this.edicao = edicao;
    }

    public int getEdicao() {
        return edicao;
    }

    public void setEdicao(int edicao) {
        this.edicao = edicao;
    }

    @Override
    public void emprestar() {
        System.out.println("Revista emprestada: " + getTitulo() + " - Edição: " + edicao);
    }

    

}
