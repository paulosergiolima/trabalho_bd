-- Criação do BD e conexão
CREATE DATABASE IF NOT EXISTS SurveyInc;
USE SurveyInc;

-- Cria schema (opcional no MySQL/MariaDB)
CREATE SCHEMA IF NOT EXISTS SurveyInc;
SET search_path = SurveyInc;

-- Tabelas
CREATE TABLE IF NOT EXISTS empresas (
  empresa_id  INT AUTO_INCREMENT PRIMARY KEY,
  nome        VARCHAR(100) NOT NULL,
  contato     VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS produtos (
  produto_id INT PRIMARY KEY,
  preco       DECIMAL(10,2) NOT NULL,
  empresa_id  INT NOT NULL,
  nome        VARCHAR(100) NOT NULL,
  dia         INT NOT NULL,
  mes         INT NOT NULL,
  ano         INT NOT NULL,
  FOREIGN KEY (empresa_id) REFERENCES empresas(empresa_id)
);

CREATE TABLE IF NOT EXISTS resposta (
  resposta_id SERIAL PRIMARY KEY,
  produto      INT NOT NULL,
  opiniao      INT NOT NULL,
  estado       CHAR(2) NOT NULL,
  dia          INT NOT NULL,
  mes          INT NOT NULL,
  ano          INT NOT NULL,
  FOREIGN KEY (produto) REFERENCES produtos(produto_id)
);
