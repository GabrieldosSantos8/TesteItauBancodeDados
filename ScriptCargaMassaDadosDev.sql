----------------------------------------------------------------------
-- 1. CARGA DE ATIVOS (Bens e direitos a serem negociados)
----------------------------------------------------------------------
INSERT INTO TB_ATIVOS (pk_ativo, ds_codigo, ds_nome) VALUES
(1, 'PETR4', 'Petrobras PN'),
(2, 'VALE3', 'Vale ON'),
(3, 'ITSA4', 'Itaúsa PN'),
(4, 'BBDC4', 'Bradesco PN'),
(5, 'MGLU3', 'Magazine Luiza ON'),
(6, 'WEGE3', 'WEG ON'),
(7, 'ABEV3', 'Ambev ON'),
(8, 'MXRF11', 'Maxi Renda FII'),
(9, 'HGLG11', 'CSHG Logística FII'),
(10, 'KNCR11', 'Kinea Rendimentos Imobiliários FII'),
(11, 'BCFF11', 'BTG Pactual Fundo de Fundos FII'),
(12, 'IVVB11', 'iShares S&P 500 ETF'),
(13, 'BOVA11', 'iShares Ibovespa ETF'),
(14, 'SMAL11', 'iShares Small Cap ETF'),
(15, 'XPLG11', 'XP Log FII');

----------------------------------------------------------------------
-- 2. CARGA DE USUÁRIOS (Investidores da plataforma)
----------------------------------------------------------------------
INSERT INTO TB_USUARIOS (pk_usuario, ds_nome, ds_email, vl_perc_corretagem) VALUES
(1, 'Ana Silva', 'ana.silva@email.com', 4.90),
(2, 'Bruno Costa', 'bruno.costa@email.com', 4.90),
(3, 'Carla Dias', 'carla.dias@email.com', 2.50),
(4, 'Daniel Martins', 'daniel.martins@email.com', 0.00),
(5, 'Eduarda Ferreira', 'eduarda.ferreira@email.com', 4.90),
(6, 'Fábio Souza', 'fabio.souza@email.com', 10.00),
(7, 'Gabriela Lima', 'gabriela.lima@email.com', 2.50),
(8, 'Heitor Almeida', 'heitor.almeida@email.com', 0.00),
(9, 'Isabela Santos', 'isabela.santos@email.com', 4.90),
(10, 'João Pereira', 'joao.pereira@email.com', 10.00);

----------------------------------------------------------------------
-- 3. CARGA DE COTAÇÕES (Histórico de preços dos ativos)
----------------------------------------------------------------------
-- Dia 2025-06-02
INSERT INTO TB_COTACAO (fk_ativo, vl_preco_unitario, dt_cotacao) VALUES
(1, 38.50, '2025-06-02 18:00:00'), (2, 61.20, '2025-06-02 18:00:00'),
(3, 9.80, '2025-06-02 18:00:00'), (8, 10.15, '2025-06-02 18:00:00'),
(9, 160.00, '2025-06-02 18:00:00'), (12, 310.50, '2025-06-02 18:00:00');
-- Dia 2025-06-03
INSERT INTO TB_COTACAO (fk_ativo, vl_preco_unitario, dt_cotacao) VALUES
(1, 38.95, '2025-06-03 18:00:00'), (2, 61.85, '2025-06-03 18:00:00'),
(3, 9.85, '2025-06-03 18:00:00'), (4, 13.50, '2025-06-03 18:00:00'),
(5, 1.80, '2025-06-03 18:00:00'), (8, 10.20, '2025-06-03 18:00:00'),
(9, 160.50, '2025-06-03 18:00:00'), (12, 312.00, '2025-06-03 18:00:00');
-- Dia 2025-06-04
INSERT INTO TB_COTACAO (fk_ativo, vl_preco_unitario, dt_cotacao) VALUES
(1, 39.10, '2025-06-04 18:00:00'), (2, 60.90, '2025-06-04 18:00:00'),
(3, 9.75, '2025-06-04 18:00:00'), (4, 13.45, '2025-06-04 18:00:00'),
(5, 1.95, '2025-06-04 18:00:00'), (8, 10.18, '2025-06-04 18:00:00'),
(9, 161.00, '2025-06-04 18:00:00'), (12, 311.80, '2025-06-04 18:00:00');
-- Dia 2025-06-05
INSERT INTO TB_COTACAO (fk_ativo, vl_preco_unitario, dt_cotacao) VALUES
(1, 40.05, '2025-06-05 18:00:00'), (2, 62.00, '2025-06-05 18:00:00'),
(3, 9.90, '2025-06-05 18:00:00'), (4, 13.60, '2025-06-05 18:00:00'),
(5, 2.10, '2025-06-05 18:00:00'), (8, 10.25, '2025-06-05 18:00:00'),
(9, 160.80, '2025-06-05 18:00:00'), (12, 315.00, '2025-06-05 18:00:00');


----------------------------------------------------------------------
-- 4. CARGA DE OPERAÇÕES (Registros de compra e venda)
----------------------------------------------------------------------
-- Operações do dia 2025-06-02
INSERT INTO TB_OPERACOES (fk_usuario, fk_ativo, nr_quantidade, vl_preco_unitario, tp_operacao, vl_corretagem, dt_operacao) VALUES
(1, 1, 100, 38.52, 'compra', 4.90, '2025-06-02 10:15:00'),
(2, 8, 300, 10.14, 'compra', 4.90, '2025-06-02 11:30:00'),
(4, 12, 50, 310.45, 'compra', 0.00, '2025-06-02 14:00:00'),
(5, 3, 500, 9.81, 'compra', 4.90, '2025-06-02 15:20:00'),
(10, 2, 100, 61.25, 'compra', 10.00, '2025-06-02 16:10:00');

-- Operações do dia 2025-06-03
INSERT INTO TB_OPERACOES (fk_usuario, fk_ativo, nr_quantidade, vl_preco_unitario, tp_operacao, vl_corretagem, dt_operacao) VALUES
(1, 3, 200, 9.84, 'compra', 4.90, '2025-06-03 10:05:00'),
(3, 9, 20, 160.55, 'compra', 2.50, '2025-06-03 10:45:00'),
(7, 4, 300, 13.51, 'compra', 2.50, '2025-06-03 11:50:00'),
(8, 5, 2000, 1.82, 'compra', 0.00, '2025-06-03 14:30:00'),
(1, 1, 50, 38.90, 'venda', 4.90, '2025-06-03 17:00:00'); -- Ana vendeu metade de PETR4

-- Operações do dia 2025-06-04
INSERT INTO TB_OPERACOES (fk_usuario, fk_ativo, nr_quantidade, vl_preco_unitario, tp_operacao, vl_corretagem, dt_operacao) VALUES
(2, 8, 100, 10.20, 'compra', 4.90, '2025-06-04 10:20:00'), -- Bruno comprou mais MXRF11
(5, 3, 200, 9.74, 'venda', 4.90, '2025-06-04 11:00:00'),
(6, 1, 100, 39.12, 'compra', 10.00, '2025-06-04 12:00:00'),
(9, 12, 30, 311.75, 'compra', 4.90, '2025-06-04 15:10:00');

-- Operações do dia 2025-06-05
INSERT INTO TB_OPERACOES (fk_usuario, fk_ativo, nr_quantidade, vl_preco_unitario, tp_operacao, vl_corretagem, dt_operacao) VALUES
(1, 2, 100, 62.05, 'compra', 4.90, '2025-06-05 11:15:00'),
(4, 12, 10, 315.10, 'venda', 0.00, '2025-06-05 13:40:00'),
(8, 5, 1000, 2.08, 'venda', 0.00, '2025-06-05 16:00:00'); -- Heitor realiza lucro parcial em MGLU3


----------------------------------------------------------------------
-- 5. CARGA DE POSIÇÃO (Foto da carteira dos clientes ao final do período)
-- Estes dados são calculados com base nas operações e na última cotação (2025-06-05).
-- Preço Médio = Média ponderada dos preços de COMPRA.
-- Lucro/Prejuízo (P&L) = (Última Cotação - Preço Médio) * Quantidade Total
----------------------------------------------------------------------
INSERT INTO TB_POSICAO (fk_usuario, fk_ativo, nr_quantidade_total, vl_preco_medio, vl_lucro_prejuizo) VALUES
-- Posições da Ana (pk_usuario=1)
(1, 1, 50, 38.52, 76.50),        -- Ativo PETR4: ((40.05 - 38.52) * 50)
(1, 3, 200, 9.84, 12.00),         -- Ativo ITSA4: ((9.90 - 9.84) * 200)
(1, 2, 100, 62.05, -5.00),        -- Ativo VALE3: ((62.00 - 62.05) * 100)
-- Posições do Bruno (pk_usuario=2)
(2, 8, 400, 10.155, 38.00),      -- Ativo MXRF11: ((10.25 - 10.155) * 400) | Média de (300*10.14 + 100*10.20)/400
-- Posições da Carla (pk_usuario=3)
(3, 9, 20, 160.55, 5.00),         -- Ativo HGLG11: ((160.80 - 160.55) * 20)
-- Posições do Daniel (pk_usuario=4)
(4, 12, 40, 310.45, 182.00),      -- Ativo IVVB11: ((315.00 - 310.45) * 40)
-- Posições da Eduarda (pk_usuario=5)
(5, 3, 300, 9.81, 27.00),         -- Ativo ITSA4: ((9.90 - 9.81) * 300)
-- Posições do Fábio (pk_usuario=6)
(6, 1, 100, 39.12, 93.00),        -- Ativo PETR4: ((40.05 - 39.12) * 100)
-- Posições da Gabriela (pk_usuario=7)
(7, 4, 300, 13.51, 27.00),        -- Ativo BBDC4: ((13.60 - 13.51) * 300)
-- Posições do Heitor (pk_usuario=8)
(8, 5, 1000, 1.82, 280.00),       -- Ativo MGLU3: ((2.10 - 1.82) * 1000)
-- Posições da Isabela (pk_usuario=9)
(9, 12, 30, 311.75, 97.50),       -- Ativo IVVB11: ((315.00 - 311.75) * 30)
-- Posições do João (pk_usuario=10)
(10, 2, 100, 61.25, 75.00);       -- Ativo VALE3: ((62.00 - 61.25) * 100)



