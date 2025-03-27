package com.senac.apispring.endereco;

import com.senac.apispring.aluno.DadosAtualizacaoAluno;

import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Embeddable
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Endereco {
	
	private String logradouro;
	private String bairro;
	private String cep;
	private String numero;
	private String complemento;
	private String cidade;
	private String uf;
	
	public Endereco() {}
	
	public Endereco(DadosEndereco dados) {
		this.setLogradouro(dados.logradouro());
		this.setBairro(dados.bairro());
		this.setUf(dados.uf());
		this.setCep(dados.cep());
		this.setNumero(dados.numero());
		this.setCidade(dados.cidade());
		this.setComplemento(dados.complemento());
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}
	
	public void atualizarInformacoes(DadosEndereco dados){
		if(dados.complemento() != null) {
			this.complemento = dados.complemento();
		}
		if(dados.numero() != null) {
			this.numero = dados.numero();
		}
		if(dados.bairro() != null) {
			this.bairro = dados.bairro();
		}
		if(dados.logradouro() != null) {
			this.logradouro = dados.logradouro();
		}
		if(dados.cidade() != null) {
			this.cidade = dados.cidade();
		}
		if(dados.uf() != null) {
			this.uf = dados.uf();
		}
		if(dados.cep() != null) {
			this.cep = dados.cep();
		}
			
	}
}
