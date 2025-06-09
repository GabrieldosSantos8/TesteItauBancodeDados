use DB001;

CREATE TABLE TB_USUARIOS (
    pk_usuario INT PRIMARY KEY AUTO_INCREMENT,
    ds_nome VARCHAR(255) NOT NULL,
    ds_email VARCHAR(255) NOT NULL UNIQUE,
    vl_perc_corretagem DECIMAL(5, 2) NOT NULL
);

CREATE TABLE TB_ATIVOS (
    pk_ativo INT PRIMARY KEY AUTO_INCREMENT,
    ds_codigo VARCHAR(50) NOT NULL UNIQUE,
    ds_nome VARCHAR(255) NOT NULL
);

CREATE TABLE TB_OPERACOES (
    pk_operacao INT PRIMARY KEY AUTO_INCREMENT,
    fk_usuario INT NOT NULL,
    fk_ativo INT NOT NULL,
    nr_quantidade INT NOT NULL,
    vl_preco_unitario DECIMAL(10, 2) NOT NULL,
    tp_operacao ENUM('compra', 'venda') NOT NULL,
    vl_corretagem DECIMAL(10, 2) NOT NULL,
    dt_operacao DATETIME NOT NULL,
    FOREIGN KEY (fk_usuario) REFERENCES TB_USUARIOS(pk_usuario),
    FOREIGN KEY (fk_ativo) REFERENCES TB_ATIVOS(pk_ativo)
);

CREATE TABLE TB_COTACAO (
    pk_cotacao INT PRIMARY KEY AUTO_INCREMENT,
    fk_ativo INT NOT NULL,
    vl_preco_unitario DECIMAL(10, 2) NOT NULL,
    dt_cotacao DATETIME NOT NULL,
    FOREIGN KEY (fk_ativo) REFERENCES TB_ATIVOS(pk_ativo)
);

CREATE TABLE TB_POSICAO (
    pk_posicao INT PRIMARY KEY AUTO_INCREMENT,
    fk_usuario INT NOT NULL,
    fk_ativo INT NOT NULL,
    nr_quantidade_total INT NOT NULL,
    vl_preco_medio DECIMAL(10, 2) NOT NULL,
    vl_lucro_prejuizo DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (fk_usuario) REFERENCES TB_USUARIOS(pk_usuario),
    FOREIGN KEY (fk_ativo) REFERENCES TB_ATIVOS(pk_ativo)
);