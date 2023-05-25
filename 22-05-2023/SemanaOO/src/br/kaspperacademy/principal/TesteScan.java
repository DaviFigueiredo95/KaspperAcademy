package br.kaspperacademy.principal;

import java.util.Scanner;

public class TesteScan {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Informe um número: ");
        int numero = scanner.nextInt();
        System.out.println(numero);
    }
}
