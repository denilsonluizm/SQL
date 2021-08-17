/* seleciona grupos de uma coluna e executa uma ação com cada grupo
   assim a tabela fica: tipo de grupo selecionado > ação com esse tipo de grupo  */

SELECT SpecialOfferID, SUM(UnitPrice) as "Soma por ID product"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT ProductID, sum(OrderQty) as "Quantidade de produtos vendidos"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY ProductID asc


SELECT SalesOrderID, COUNT(ProductID) as "Numero de Produtos vendidos por compra"
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID

SELECT FirstName, COUNT(FirstName) as "Vezes que um mesmo FirstName aparece"
FROM Person.Person
GROUP BY FirstName
ORDER BY FirstName ASC

SELECT Color, AVG(ListPrice) as "Média do preço, por cor"
FROM Production.Product
GROUP BY Color

SELECT Color, AVG(ListPrice) as "Média do preço, por cor"
FROM Production.Product
WHERE Color = 'Silver' /* seleciona uma cor especifica */
GROUP BY Color

SELECT MiddleName, COUNT(FirstName) as "Vezes que um mesmo MiddleName aparece"
FROM Person.Person /* note que na funçao agregadora tbm podemos usar LastName */
GROUP BY MiddleName
ORDER BY MiddleName ASC

SELECT ProductID, AVG(OrderQty) "Média de produtos vendidos por venda"
FROM Sales.SalesOrderDetail
GROUP BY ProductID ORDER BY ProductID asc

SELECT TOP 10 SalesOrderID, SUM(LineTotal) as "Valor total da venda"
FROM Sales.SalesOrderDetail /* 10 vendas que mais arrecadaram */
GROUP BY SalesOrderID
ORDER BY SUM(LineTotal) DESC

SELECT ProductID, SUM(LineTotal) "Valor arrecadado do produto"
FROM Sales.SalesOrderDetail  /* note que está em ordem do produto que mais arrecadou */
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC

SELECT ProductID, SUM(StockedQty) "Quantidade estocada do produto", SUM(OrderQty) "Quantidade de pedidos"
FROM Production.WorkOrder
GROUP BY ProductID
ORDER BY SUM(StockedQty) DESC

SELECT ProductID, COUNT(ProductID) "Vezes em que o produto é requisitado"
FROM Production.WorkOrder
GROUP BY ProductID
ORDER BY COUNT(ProductID) DESC