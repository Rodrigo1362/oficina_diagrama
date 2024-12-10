
CREATE DATABASE IF NOT EXISTS oficina_mecanica;
USE oficina_mecanica;


CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    ano INT NOT NULL,
    placa VARCHAR(10) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);


CREATE TABLE IF NOT EXISTS mecanico (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    especialidade VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS ordem_servico (
    id_os INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL,
    data_emissao DATE NOT NULL,
    data_conclusao DATE,
    status VARCHAR(20) NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    id_veiculo INT,
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo)
);

CREATE TABLE IF NOT EXISTS servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL, 
    id_os INT,
    FOREIGN KEY (id_os) REFERENCES ordem_servico(id_os)
);

CREATE TABLE IF NOT EXISTS peca (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,  -- Valor da peça
    id_os INT,
    FOREIGN KEY (id_os) REFERENCES ordem_servico(id_os)
);

CREATE TABLE IF NOT EXISTS mecanico_ordem_servico (
    id_mecanico INT,
    id_os INT,
    PRIMARY KEY (id_mecanico, id_os),
    FOREIGN KEY (id_mecanico) REFERENCES mecanico(id_mecanico),
    FOREIGN KEY (id_os) REFERENCES ordem_servico(id_os)
);
