--ROUND arredondamento de valores ROUND(coluna,<num de casas>)
SELECT ROUND(LineTotal,2), LineTotal
FROM Sales.SalesOrderDetail
--note que nao elimina os algoritimos 0

-- é tabelinha meu amor