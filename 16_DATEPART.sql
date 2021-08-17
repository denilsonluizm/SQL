-- manipula datas: https://docs.microsoft.com/pt-br/sql/t-sql/functions/datepart-transact-sql?view=sql-server-ver15
SELECT SalesOrderID, DATEPART(MONTH, OrderDate)
FROM Sales.SalesOrderHeader

-- podemos agrupar por elementos das datas, por mes, por exemplo: (media do Total Due de cada mês no periodo de mais de 1 ano)
SELECT AVG(TotalDue) AS Media, DATEPART(MONTH, OrderDate) AS Mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate) -- lembrando que aqui vc agrupa por mês e na tabela há informações de mais de 1 ano
ORDER BY Mes ASC -- aqui pode-se usar o nome dado pra coluna

-- Idem, por ano
SELECT AVG(TotalDue) AS Media, DATEPART(YEAR, OrderDate) AS Ano
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)
ORDER BY Ano ASC 

