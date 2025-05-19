package com.flutter.crud.entities;
import jakarta.persistence.*;

@Entity
public class Bebida {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false)
    private String descricao;
    
    @Column(nullable = false)
    private String categoria;
    
    @Column(nullable = false)
    private String imgUrl;
    
    @Column(nullable = false)
    private double valor;
    
}