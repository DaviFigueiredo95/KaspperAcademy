package br.kaspperacademy.entidades;

public class Conta {
    private String titular;
    private String numero;
    private double saldo;

    public double getSaldo() {
        return saldo;
    }

    // Método construtor
    public Conta(){}

    public Conta(String titular, String numero, double saldo) {
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
    public double mostraSaldo() {
        return this.saldo;
    }

    public void depositar(double valor) {
        this.saldo += valor;
    }

    public double sacar(double valor) {
        this.saldo -= valor;
        return this.mostraSaldo();
    }

    public String getTitular() {
        return titular;
    }

    public void setTitular(String titular) {
        this.titular = titular;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

}