select g.nome as GERENTE, count(sup.fk_empregado_matricula) as QTD_EMPREGADO from gerente g, supervisiona sup
	where sup.fk_gerente_matricula = g.matricula
group by g.matricula;