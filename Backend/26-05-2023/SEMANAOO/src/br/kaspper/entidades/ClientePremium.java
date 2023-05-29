package br.kaspper.entidades;

public class ClientePremium extends Cliente {

    public ClientePremium(String nome) {
        super(nome);
    }

    @Override
    public void realizarCompra(double valor) {
        super.realizarCompra(valor);
        System.out.println("Ocliente acumulou " + (valor * 0.1) + " pontos.");
    }
    
}
