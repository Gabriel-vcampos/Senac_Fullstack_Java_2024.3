package aula01;

public class VariaveisJava {

	public static void main(String[] args) {
		
		int idade = 25;
		double altura = 1.70;
		int peso = 80;
		String nome = "Eduardo";
		boolean aluno = false;
		double IMC = peso / (altura * altura);
		
		if(IMC < 18.5) {
			System.out.print("A pessoa se chama: " + nome + " com idade de: "+ idade + " ele é um aluno: " + aluno + " e ele está abaixo do peso");
		} else if(IMC >= 18.5 && IMC <24.9) {
			System.out.print("A pessoa se chama: " + nome + " com idade de: "+ idade + " ele é um aluno: " + aluno + " e ele está com o peso normal");
		} else if(IMC >= 24.9 && IMC <  29.9){
			System.out.print("A pessoa se chama: " + nome + " com idade de: "+ idade + " ele é um aluno: " + aluno + " e ele está em sobrepeso");
		} else if(IMC >= 30.0 && IMC <  34.9){
			System.out.print("A pessoa se chama: " + nome + " com idade de: "+ idade + " ele é um aluno: " + aluno + " e ele está com obesidade nível 1");
		} else if(IMC >= 35.0 && IMC <  39.9){
			System.out.print("A pessoa se chama: " + nome + " com idade de: "+ idade + " ele é um aluno: " + aluno + " e ele está com obesidade nível 2");
		} else {
			System.out.print("A pessoa se chama: " + nome + " com idade de: "+ idade + " ele é um aluno: " + aluno + " e ele está com obesidade nível 3");
		}
	}
}
