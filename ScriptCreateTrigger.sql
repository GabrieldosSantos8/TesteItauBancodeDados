DELIMITER //

CREATE TRIGGER trg_after_quote_insert_update
AFTER INSERT ON TB_COTACAO
FOR EACH ROW
BEGIN
    -- Para cada usuário que possui o ativo recém-cotado,
    -- recalcular P&L e potencialmente o preço médio (se for o caso de afetar aquisições, o que geralmente não é o caso)

    -- Primeiro, obtenha a última cotação para o ativo
    SET @latest_quote_price = NEW.vl_preco_unitario;

    -- Atualizar a Posição para todos os usuários que possuem este ativo
    UPDATE TB_POSICAO p
    SET
        p.vl_lucro_prejuizo = (p.nr_quantidade_total * @latest_quote_price) - (p.nr_quantidade_total * p.vl_preco_medio)
    WHERE
        p.fk_ativo = NEW.fk_ativo;

    -- Nota: O Preço Médio (preco_medio) não deve ser atualizado por novas cotações.
    -- Ele é calculado com base nas operações de compra. O P&L sim.
END;
//

DELIMITER ;