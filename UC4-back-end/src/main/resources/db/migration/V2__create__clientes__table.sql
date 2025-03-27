CREATE TABLE clientes(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    servico VARCHAR(255) NOT NULL,
    logradouro VARCHAR(255),
    numero VARCHAR(30),
    bairro VARCHAR(255),
    cidade VARCHAR(255),
    uf VARCHAR(2),
    cep VARCHAR(10),
    complemento VARCHAR(255)
);