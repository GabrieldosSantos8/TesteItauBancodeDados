
SELECT  
o.pk_operacao,  
o.nr_quantidade,  
o.vl_preco_unitario,
o.tp_operacao, 
o.vl_corretagem,  
o.dt_operacao, 
a.ds_codigo AS codigo_do_ativo,
a.ds_nome AS nome_do_ativo  
FROM  
TB_OPERACOES o  
JOIN  
TB_ATIVOS  a  ON  o.fk_ativo = a.pk_ativo 
WHERE
o.fk_usuario = 1 -- Substitua pelo ID do usuário 
AND o.fk_ativo = 2 -- Substitua pelo ID do ativo  
AND o.dt_operacao >= DATE_SUB(CURDATE(),  
INTERVAL 30 DAY) ORDER BY o.dt_operacao DESC;
