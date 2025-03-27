package aula03;

import java.util.Scanner;

public class Atividadeproposta {

	public static void main(String[] args) {
		System.out.println("----------- Bem-vindo ao sistema de Salário -----------");
		Scanner scanner = new Scanner(System.in);
		System.out.print("Digite o seu nome a seguir:");
		String nome_usuario = scanner.nextLine();
		
		System.out.print("Digite o seu CPF a seguir:");
		float cpf_usuario = scanner.nextFloat();
		
		System.out.print("Digite o seu Salário a seguir:");
		float salario = scanner.nextFloat();
		scanner.close();
		float desconto_inss;
		float desconto_transporte;
		
		if(salario >= 2000) {
			 desconto_inss = (float) (salario * 0.11);
		} else if (salario < 2000 && salario >= 1500) {
			 desconto_inss = (float) (salario * 0.09);
		} else {
			 desconto_inss = (float) (salario * 0.08);
		}
		if (salario >= 1000) {
			 desconto_transporte = (float) (salario * 0.06);
		} else {
			 desconto_transporte = (float) (salario * 0.05);
		}
		
		float salario_liquido = salario - desconto_inss - desconto_transporte;
		System.out.print("O usuário:" + nome_usuario + "\n" + "Com CPF: " + cpf_usuario + "\n" + "Com salário de: " + salario + "\n" + "Tem seu salário líquido como: " + salario_liquido);
	}

}
