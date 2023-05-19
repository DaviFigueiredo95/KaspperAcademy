public class Stringue {
    public static void main(String[] args) {
        String palavra = "Kaspper Academy";
        System.out.println(palavra);

        System.out.println(palavra.toUpperCase());
        System.out.println(palavra.toLowerCase());
        System.out.println("Quantidade de letras: " + palavra.length());

        String x = "20";
        int y = 3;
        String z = x + y;
        System.out.println("Qual o valor de z: " + z);


        String str1 = "Hello";
        String str2 = "World";
        String str3 = "Hello";

        boolean saoIguais = str1.equals(str3);
        System.out.println("str1 é igual ao str3? " + saoIguais);

        saoIguais = str1.equalsIgnoreCase(str3);
        System.out.println("e agora str1 é igual ao str3? " + saoIguais);

        boolean saoIguaisOperador = str1 == str3;
        System.out.println("str1 é igual a str2? " + saoIguaisOperador);

        String texto = "O rato roeu a roupa do rei de Roma";
        int posicao = texto.indexOf("roupa");
        System.out.println(posicao);

        String textoSubstituido = texto.replace("rato", "gato");
        System.out.println(textoSubstituido);

        






    }
}
