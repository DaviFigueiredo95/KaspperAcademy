package br.kaspper.entidades;

public class ClientePremium extends Cliente {

    public ClientePremium(String nome) {
        super(nome);
    }

    @Override
    public void realizarCompra(double valor) {
        super.realizarCompra(valor);
        System.out.println("O cliente acumulou " + (int) (valor * 0.1) + " pontos.");
    }
    
}
