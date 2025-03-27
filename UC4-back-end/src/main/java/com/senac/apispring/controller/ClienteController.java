package com.senac.apispring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.senac.apispring.cliente.Cliente;
import com.senac.apispring.cliente.DadosCadastroCliente;
import com.senac.apispring.repository.ClienteRepository;

import jakarta.transaction.Transactional;

@RestController
@RequestMapping("/api/clientes")
public class ClienteController {
	
	@Autowired
	private ClienteRepository clienteRepository;
	
	@PostMapping("/cadastro")
	@Transactional
	public void cadastrarClientes(@RequestBody DadosCadastroCliente dados) {
	 clienteRepository.save(new Cliente(dados));
	}

	@GetMapping("/listar")
	public List<Cliente> listar(){
		return clienteRepository.findAll();
	}
}