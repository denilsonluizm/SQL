SELECT TOP 10 sum(LineTotal) as "Soma Total"
FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(LineTotal) as "Valor mínimo"
FROM Sales.SalesOrderDetail

SELECT TOP 10 max(LineTotal) as "Valor máximo"
FROM Sales.SalesOrderDetail

SELECT TOP 10 avg(LineTotal) as "Média"
FROM Sales.SalesOrderDetail