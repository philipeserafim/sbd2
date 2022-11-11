create or replace view EMPREGADOS_GERENTE (EMPREGADO, AREA, GERENTE) as select e.nome as EMPREGADO, a.nome as AREA, g.nome as GERENTE from empregado e, gerente g, area a, habilitado hab, supervisiona sup
	where hab.fk_empregado_matricula = e.matricula
		and fk_area_codigo = a.codigo
        and e.matricula = sup.fk_empregado_matricula
        and g.matricula = sup.fk_gerente_matricula
;


create or replace view VENDAS_EMPREGADO (EMPREGADO, TOTAL_VENDAS) as 
	select e.nome as EMPREGADO, sum(prod.valor) as TOTAL_VENDAS from empregado e, venda v, possui p, produto prod
		where v.fk_empregado_matricula = e.matricula
		and p.fk_venda_numeroVenda = v.numeroVenda
		and p.fk_produto_codigo = prod.codigo
		group by e.matricula;