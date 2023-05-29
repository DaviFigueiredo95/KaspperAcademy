package br.kaspper.entidades;

public class Cliente {
    private String nome;

    // Criar um construtor
    public Cliente(String nome) {
        this.nome = nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return this.nome;
    }

    public void realizarCompra(double valor) {
        System.out.println("O cliente " + nome + " realizou uma compra de R$: " + valor);
    }
}
