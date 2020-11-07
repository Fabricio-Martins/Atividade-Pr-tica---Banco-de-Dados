DROP TABLE IF EXISTS CONTEUDO_ADICIONAL;
DROP TABLE IF EXISTS PLATAFORMA_TEM_COPIAS;
DROP TABLE IF EXISTS PLATAFORMA;
DROP TABLE IF EXISTS COPIAS;
DROP TABLE IF EXISTS PROGRAMADORES;
DROP TABLE IF EXISTS ENGENHEIROS_DE_SOM;
DROP TABLE IF EXISTS DESIGNERS;
DROP TABLE IF EXISTS PROGRAMACAO;
DROP TABLE IF EXISTS PRODUCAO_DE_AUDIO;
DROP TABLE IF EXISTS PRODUCAO_DE_ARTE;
DROP TABLE IF EXISTS FUNCIONARIO_TEM_ESPECIALIZACAO;
DROP TABLE IF EXISTS A_ENGINE;
DROP TABLE IF EXISTS JOGO;
DROP TABLE IF EXISTS FUNCIONARIOS;
DROP TABLE IF EXISTS ESPECIALIZACAO;

CREATE TABLE ESPECIALIZACAO (
	id_treinamento INTEGER PRIMARY KEY,
    area_treinamento VARCHAR(255),
    nome_treinamento VARCHAR(255)
);
    
CREATE TABLE FUNCIONARIOS (
	id INTEGER PRIMARY KEY,
    nome VARCHAR(255),
    telefone VARCHAR(255)
);

CREATE TABLE JOGO (
	nome VARCHAR(255) PRIMARY KEY,
    topico VARCHAR(255),
    categoria VARCHAR(255),
    milestone VARCHAR(255),
    faixa_etaria VARCHAR(255)
);

CREATE TABLE A_ENGINE (
	nome VARCHAR(255) PRIMARY KEY,
    versao VARCHAR(255),
    api VARCHAR(255)
);

CREATE TABLE FUNCIONARIO_TEM_ESPECIALIZACAO (
	id_treinamento INTEGER,
    id_funcionario INTEGER,
    PRIMARY KEY (id_treinamento, id_funcionario),
    FOREIGN KEY (id_treinamento) REFERENCES ESPECIALIZACAO(id_treinamento),
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIOS(id)
);

CREATE TABLE PRODUCAO_DE_ARTE (
	id_criacao INTEGER PRIMARY KEY,
    nivel VARCHAR(255),
    roteiro_nivel VARCHAR(255),
    assets_graficos VARCHAR(255),
    nome_jogo VARCHAR(255),
    FOREIGN KEY (nome_jogo) REFERENCES JOGO(nome)
);

CREATE TABLE PRODUCAO_DE_AUDIO (
	id_som INTEGER PRIMARY KEY,
    tipo_som VARCHAR(255),
    letra_script VARCHAR(255),
    nome_jogo VARCHAR(255),
    FOREIGN KEY (nome_jogo) REFERENCES JOGO(nome)
);

CREATE TABLE PROGRAMACAO (
	id_codigo INTEGER PRIMARY KEY,
    linguagem VARCHAR(255),
    classe VARCHAR(255),
    nome_jogo VARCHAR(255),
    nome_engine VARCHAR(255),
    FOREIGN KEY (nome_jogo) REFERENCES JOGO(nome),
    FOREIGN KEY (nome_engine) REFERENCES A_ENGINE(nome)
);
    
CREATE TABLE DESIGNERS (
	id_funcionario INTEGER PRIMARY KEY,
    id_criacao INTEGER,
	cargo VARCHAR(255),
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIOS(id),
    FOREIGN KEY (id_criacao) REFERENCES PRODUCAO_DE_ARTE(id_criacao)
);
    
CREATE TABLE ENGENHEIROS_DE_SOM (
	id_funcionario INTEGER PRIMARY KEY,
    id_som INTEGER,
	cargo VARCHAR(255),
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIOS(id),
    FOREIGN KEY (id_som) REFERENCES PRODUCAO_DE_AUDIO(id_som)
);
    
CREATE TABLE PROGRAMADORES (
	id_funcionario INTEGER PRIMARY KEY,
    id_codigo INTEGER,
	cargo VARCHAR(255),
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIOS(id),
    FOREIGN KEY (id_codigo) REFERENCES PROGRAMACAO(id_codigo)
);

CREATE TABLE COPIAS (
	id INTEGER PRIMARY KEY,
    preco VARCHAR(255),
    midia VARCHAR(255),
    nome_jogo VARCHAR(255),
    FOREIGN KEY (nome_jogo) REFERENCES JOGO(nome)
);

CREATE TABLE PLATAFORMA (
	 id_plataforma INTEGER PRIMARY KEY,
	 marca VARCHAR(255),
     fabricante VARCHAR(255),
     versao VARCHAR(255)
);

CREATE TABLE PLATAFORMA_TEM_COPIAS (
	id_plataforma INTEGER,
    id_copia INTEGER,
    FOREIGN KEY (id_plataforma) REFERENCES PLATAFORMA(id_plataforma),
    FOREIGN KEY(id_copia) REFERENCES COPIAS(id)
);

CREATE TABLE CONTEUDO_ADICIONAL (
    nome_dlc VARCHAR(255),
    preco_dlc VARCHAR(255),
    tamanho_dlc VARCHAR(255),
    nome_jogo VARCHAR(255),
    PRIMARY KEY (nome_dlc, nome_jogo),
    FOREIGN KEY (nome_jogo) REFERENCES JOGO(nome)
);
