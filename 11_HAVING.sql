SELECT FirstName, COUNT(FirstName) "Quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 50
ORDER BY FirstName ASC

SELECT ProductID, SUM(LineTotal) "arrecadação por produto, entre 162k e 500k"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 and 500000

SELECT FirstName, COUNT(FirstName) "Quantidade"
FROM Person.Person /* agrupa os nomes com ocorrência maior que 10 e que tem titulo Mr */
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10
ORDER BY FirstName ASC

/* notar a diferença: WHERE é uma função que da uma condição para um elemento só, HAVING é uma função que da um condição para um agrupamento */

SELECT StateProvinceID "Provincia", COUNT(PostalCode) "Número de ocorrencias"
FROM Person.Address    /* Note que podemos trocar PostalCode pelo proprio StateProvinceID */
GROUP BY StateProvinceID
HAVING COUNT(PostalCode) > 1000
ORDER BY COUNT(PostalCode) DESC

SELECT ProductID "ID do produto", AVG(LineTotal) "rendimento"
FROM Sales.SalesOrderDetail /* produtos com rendimento, em média, inferior a 1 milhão */
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000
ORDER BY AVG(LineTotal) DESC
