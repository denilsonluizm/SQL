SELECT TOP 10 ProductID, ListPrice /* seleciona os 10 mais caros */
FROM Production.Product
ORDER BY ListPrice desc

SELECT TOP 4 Name, ProductID /* seleciona os 4 primeiros produtos com ProductID entre 1 e 4 */
FROM Production.Product
ORDER BY ProductID asc
