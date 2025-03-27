package com.senac.apispring.repository;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.senac.apispring.aluno.Aluno;
import com.senac.apispring.aluno.DadosListagemAluno;
@Repository

public interface AlunoRepository extends JpaRepository<Aluno, Long> {
	
	List<Aluno> findAllByAtivoTrue();

}
