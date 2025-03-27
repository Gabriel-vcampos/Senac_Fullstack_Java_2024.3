package aula01;

import java.util.Scanner;

public class JavaScanner {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.print("Digite um número: ");

		int numero1 = scanner.nextInt();
		
		System.out.print("Digite outro número: ");
		int numero2 = scanner.nextInt();
		
		int soma = numero1 + numero2;
		System.out.print(soma);
		scanner.close();

	}

}
