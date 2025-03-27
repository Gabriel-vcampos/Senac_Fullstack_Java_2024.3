package aula04;
import java.util.Scanner;

import java.util.Objects;

public class Casa {
	private String rua;
	private String numero_da_casa;
	private String cor_da_casa;
	
	
	public Casa(String rua, String numero_da_casa , String cor_da_casa) {
		this.rua = rua;
		this.numero_da_casa = numero_da_casa;
		this.cor_da_casa = cor_da_casa;
	}


	public String getCor_da_casa() {
		return cor_da_casa;
	}


	public void setCor_da_casa(String cor_da_casa) {
		this.cor_da_casa = cor_da_casa;
	}


	public String getRua() {
		return rua;
	}


	public void setRua(String rua) {
		this.rua = rua;
	}


	public String getNumero_da_casa() {
		return numero_da_casa;
	}


	public void setNumero_da_casa(String numero_da_casa) {
		this.numero_da_casa = numero_da_casa;
	}
	
	public void chamarCasa() {
		System.out.println("Endereço:");
		System.out.println("Rua - " + rua);
		System.out.println("Numero da casa - " + numero_da_casa);
		System.out.println("Cor da casa - " + cor_da_casa);
		
		
	}
	public void alterarendereco() {
		System.out.print("Altere o número da casa: ");
		Scanner leitor = new Scanner(System.in);
		numero_da_casa = leitor.nextLine();
		System.out.print("O novo número da casa é: " + numero_da_casa);
	}

	
	
}
