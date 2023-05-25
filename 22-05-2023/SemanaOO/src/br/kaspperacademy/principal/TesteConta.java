package br.kaspperacademy.principal;

import br.kaspperacademy.entidades.Conta;

public class TesteConta {
    public static void main(String[] args) {
        // Instanciando um objeto
        Conta c1 = new Conta();
        c1.setTitular("Bill Gates");
        c1.setNumero("95972000XP");
        c1.depositar(100000.00);

        System.out.println(c1.getTitular());
        System.out.println(c1.getNumero());
        System.out.println(c1.getSaldo());

        
        Conta c2 = new Conta("Musk", "666", 666.66);
        //System.out.println(c2.titular);
        //System.out.println(c2.numero);
        //System.out.println(c2.saldo);
        c2.imprimirDadosBancarios();
        c2.depositar(1000.00);
        System.out.println("Depois do depósito: " + c2.mostraSaldo());
        c2.sacar(60000.00);
        System.out.println("Depois do saque: " + c2.mostraSaldo());

    }
}
