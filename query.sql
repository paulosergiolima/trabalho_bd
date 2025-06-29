-- Usando o schema “SurveyInc” (remova ou ajuste se não usar schemas)
CREATE SCHEMA IF NOT EXISTS SurveyInc;
-- 1) Tabela de respostas
CREATE TABLE resposta (
    resposta_id  INTEGER PRIMARY KEY,
    produto      INTEGER NOT NULL,
    opiniao      INTEGER NOT NULL,
    estado       CHAR(2)    NOT NULL,
    dia          INTEGER    NOT NULL,
    mes          INTEGER    NOT NULL,
    ano          INTEGER    NOT NULL
);

-- 2) Tabela de produtos
CREATE TABLE produtos (
    produto_id  INTEGER PRIMARY KEY,
    preco       NUMERIC(10,2) NOT NULL,
    empresa_id  INTEGER NOT NULL,
    nome        VARCHAR(100)   NOT NULL,
    dia         INTEGER        NOT NULL,
    mes         INTEGER        NOT NULL,
    ano         INTEGER        NOT NULL,
    FOREIGN KEY (empresa_id) REFERENCES empresas(empresa_id)
);

-- 3) Tabela de empresas
CREATE TABLE empresas (
    empresa_id  INTEGER PRIMARY KEY,
    nome        VARCHAR(100) NOT NULL,
    contato     VARCHAR(100) NOT NULL
);
