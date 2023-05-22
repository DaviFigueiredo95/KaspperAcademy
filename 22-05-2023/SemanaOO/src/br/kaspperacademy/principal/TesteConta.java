package br.kaspperacademy.principal;

import br.kaspperacademy.entidades.Conta;

public class TesteConta {
    public static void main(String[] args) {
        // Instanciando um objeto
        Conta c1 = new Conta();
        c1.titular = "Bill Gates";
        c1.numero = "95972000XP";
        c1.saldo = 100000.00;

        System.out.println(c1.titular);
        System.out.println(c1.numero);
        System.out.println(c1.saldo);

        
        Conta c2 = new Conta("Musk", "666", 666.66);
        //System.out.println(c2.titular);
        //System.out.println(c2.numero);
        //System.out.println(c2.saldo);
        c2.imprimirDadosBancarios();

    }
}
