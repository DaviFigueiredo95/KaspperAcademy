package br.kaspper.principal;

import br.kaspper.entidades.Calculadora;

public class TesteCalculadora {
    public static void main(String[] args) {
        Calculadora calculadora = new Calculadora();
        // Utilizando os métodos de sobrecarga
        int num1 = calculadora.somar(5, 20);
        int num2 = calculadora.somar(5, 415, 47);
        double num3 = calculadora.somar(15.4, 29.6);
        System.out.println("Num1: " + num1 + " Num2: " + num2 + " Num3: " + num3);
    }
}
