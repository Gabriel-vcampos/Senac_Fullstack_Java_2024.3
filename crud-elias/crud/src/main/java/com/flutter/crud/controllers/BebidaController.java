package com.flutter.crud.controllers;
import jakarta.persistence.*;
import com.flutter.crud.entities.Produto;
import com.flutter.crud.repositories.BebidaRepository;
import com.flutter.crud.repositories.ProdutoRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.flutter.crud.entities.Bebida;


@RestController
@RequestMapping("/bebidas")
public class BebidaController {
    @Autowired
    private BebidaRepository bebidaRepository;

    @GetMapping
    public List<Bebida> listarBebidas() {
        return bebidaRepository.findAll();
    }
    
}
