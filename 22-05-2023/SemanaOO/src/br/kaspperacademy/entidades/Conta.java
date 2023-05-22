package br.kaspperacademy.entidades;

public class Conta {
    public String titular;
    public String numero;
    public Double saldo;

    // Método construtor
    public Conta(){}

    public Conta(String titular, String numero, Double saldo) {
        this.titular = titular;
        this.numero = numero;
        this.saldo = saldo;
    }

    // Método sem retorno
    public void imprimirDadosBancarios() {
        System.out.println("Titular: " + this.titular);
        System.out.println("Número da Conta: " + this.numero);
        System.out.println("Saldo R$: " + this.saldo);
    }

    // Método com retorno
    public Double mostraSaldo() {
        return this.saldo;
    }

    public void depositar(Double valor) {
        this.saldo += valor;
    }

    public Double sacar(Double valor) {
        this.saldo -= valor;
        return this.mostraSaldo();
    }


}