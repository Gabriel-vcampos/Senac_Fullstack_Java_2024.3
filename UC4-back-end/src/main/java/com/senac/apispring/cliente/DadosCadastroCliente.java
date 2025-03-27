package com.senac.apispring.cliente;

import com.senac.apispring.aluno.Curso;
import com.senac.apispring.endereco.DadosEndereco;

public record DadosCadastroCliente(
		String  nome,
		String email,
		DadosEndereco endereco,
		String servico
		) {

}