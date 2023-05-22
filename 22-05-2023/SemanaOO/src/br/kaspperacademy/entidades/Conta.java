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
}
