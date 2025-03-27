package aula03;
import java.util.Scanner;

public class whileexercicio {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		int contador = 1;
		while(contador <= 5) {
		System.out.print("Qual o seu nome?");
		String nome = scanner.nextLine();
		contador++;
		}		
		scanner.close();

}
}
