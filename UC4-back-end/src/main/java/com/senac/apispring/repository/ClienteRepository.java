package com.senac.apispring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.senac.apispring.cliente.Cliente;
@Repository

public interface ClienteRepository extends JpaRepository<Cliente, Long> {

}
