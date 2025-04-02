package com.senac.apispring.endereco;

import jakarta.validation.constraints.NotBlank;

public record DadosEndereco(
		@NotBlank
		String logradouro,
		@NotBlank
		String uf,
		@NotBlank 
		String cep,
		String numero,
		String complemento,
		@NotBlank
		String cidade,
		@NotBlank
		String bairro
		) {

}
