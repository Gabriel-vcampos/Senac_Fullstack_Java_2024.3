package com.senac.apispring.cliente;

import com.senac.apispring.endereco.Endereco;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Table(name= "clientes")
@Entity(name= "Cliente")
@Getter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = "id")
public class Cliente {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nome;
	private String email;
	
	private String servico;
	private Endereco endereco;
	
	public Cliente() {
		
	}

	
	
	public Cliente(DadosCadastroCliente dados) {
		this.setNome(dados.nome());
		this.setEmail(dados.email());
		this.setEndereco(new Endereco(dados.endereco()));
		this.setServico(dados.servico());
	}



	public Endereco getEndereco() {
		return endereco;
	}



	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getServico() {
		return servico;
	}



	public void setServico(String servico) {
		this.servico = servico;
	}



	public String getNome() {
		return nome;
	}



	public void setNome(String nome) {
		this.nome = nome;
	}
}