package br.kaspper.entidades;


public class ClienteNormal extends Cliente {
    
    //definindo um construtuor para ClienteNormal
    public ClienteNormal(String nome) {
        super(nome);
    }

    @Override
    public void realizarCompra(double valor) {
        super.realizarCompra(valor);
        System.out.println("O cliente acumulou: " + (int) (valor * 0.05) + " pontos.");
    }
}
