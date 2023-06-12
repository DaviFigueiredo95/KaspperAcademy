package exercicios.entidades;

public class Conta implements IConta {
    private Cliente titular;
    private String numero;
    private double saldo;

    public Cliente getTitular() {
        return titular;
    }
    public void setTitular(Cliente titular) {
        this.titular = titular;
    }
    
    public String getNumero() {
        return numero;
    }
    public void setNumero(String numero) {
        this.numero = numero;
    }

    public double getSaldo() {
        return saldo;
    }


    @Override
    public void depositar(double valor) {
        this.saldo += valor;
    }

    @Override
    public double sacar(double valor) {
        this.saldo -= valor;
        return this.saldo;
    }

    @Override
    public double calcularTarifa(double valor) {
        return valor * 0.2;
    }
    
}
