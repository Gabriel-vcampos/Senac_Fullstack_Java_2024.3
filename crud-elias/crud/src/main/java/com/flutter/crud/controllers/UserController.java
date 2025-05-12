package com.flutter.crud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.flutter.crud.entities.User;
import com.flutter.crud.repositories.UserRepository;

@CrossOrigin(origins = "*")
//Acima, Substitua pela porta onde o Flutter está rodando
@RestController
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserRepository repositorio;

	@GetMapping
	public List<User> listar() {
		return repositorio.findAll();
	}

	@PostMapping
	public void salvar(@RequestBody User user) {
		repositorio.save(user);
	}

	@PostMapping("/login")
	public ResponseEntity<String> login(@RequestBody User user) {
		User existingUser = repositorio.findByEmail(user.getEmail());

		if (existingUser != null && existingUser.getSenha().equals(user.getSenha())) {
			return ResponseEntity.ok("Login successful");
		} else {
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid email or password");
		}
	}
	
	@PostMapping("/register")
	public ResponseEntity<String> registerUser(@RequestBody User user) {
		// Verificar se o usuário já existe
			User existingUser = repositorio.findByEmail(user.getEmail());
			if (existingUser != null) {
				return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Usuário já existe.");
			}
			// Salvar o novo usuário no banco de dados
			repositorio.save(user);
			return ResponseEntity.status(HttpStatus.CREATED).body("Usuário registrado com sucesso.");
	}
}

