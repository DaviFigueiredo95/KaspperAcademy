package br.kaspper.principal;

import br.kaspper.entidades.Retangulo;

public class TesteRetangulo {
    public static void main(String[] args) {
        Retangulo calcRetangulo = new Retangulo();
        int soma = calcRetangulo.retangulo(5, 10);
        System.out.println("A área do retângulo é: " + soma);
    }
}
