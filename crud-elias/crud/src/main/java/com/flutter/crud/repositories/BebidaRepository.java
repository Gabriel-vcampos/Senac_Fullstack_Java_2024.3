package com.flutter.crud.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.flutter.crud.entities.Bebida;

@Repository
public interface BebidaRepository extends JpaRepository<Bebida, Long> {
    List<Bebida> findByCategoria(String categoria);
}
