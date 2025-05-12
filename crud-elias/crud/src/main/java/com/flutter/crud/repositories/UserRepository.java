package com.flutter.crud.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flutter.crud.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {
	// onde <User,Long> tipo da entidade e tipo do identificador
	User findByEmail(String email);

}
