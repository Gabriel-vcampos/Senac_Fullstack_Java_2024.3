package aula03;

import java.util.Scanner;

public class numerospares {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("Digite um número a seguir:");
		int numero_usuario = scanner.nextInt();
		int contador = 0;
		
		for (int i = 0; i <= 10; i++) {
			if (numero_usuario % 2 == 0) {
				System.out.println("Esse número é par");
				System.out.println("Digite um número a seguir:");
				numero_usuario = scanner.nextInt();
			}
			
			else {
				System.out.println("Esse número é impar");
				System.out.println("Digite um número a seguir:");
				numero_usuario = scanner.nextInt();
			}
		}
		
		System.out.println("PROGRAMA TERMINOU");
		}
	}

