package aula01;

public class CalculadoraJava {

	public static void main(String[] args) {
		String Operador = "/";
		double numero1 = 20;
		double numero2 = 80;
		double operacao = numero1 + numero2;
		switch (Operador) {
			case "+":
				System.out.println("A operação escolhida foi: " + Operador);
				System.out.printf("A soma foi igual a: %.2f" + operacao);
				break;
			case "-":
				System.out.println("A operação escolhida foi: " + Operador);
				operacao = numero1 - numero2;
				System.out.printf("A subtração foi igual a: %.2f" , operacao);
				break;
			case "*":
				System.out.println("A operação escolhida foi: " + Operador);
				operacao = numero1 * numero2;
				System.out.printf("A Multiplicação foi igual a: %.2f " , operacao);
				break;
			case"/":
				System.out.println("A operação escolhida foi: " + Operador);
				operacao = numero1 / numero2;
				System.out.printf("A Divisão foi igual a: %.2f" , operacao);
				break;
			default: 
				System.out.println("Operação inválida!");
		}
	}

}
