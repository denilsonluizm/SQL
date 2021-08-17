/* o BETWEEN inclui os limites */

SELECT ProductID, Name, ListPrice  /*lista os produtos de valor entre 1k e 1.5k e ordena do mais caro pro mais barato */
FROM Production.Product
WHERE ListPrice BETWEEN 1000 and 1500
ORDER BY ListPrice desc 

SELECT ProductID, Name, ListPrice /* lista os produtos que ano tem valor entre 1k e 1.5k e ordena do mais caro pro mais barato */
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 and 1500
ORDER BY ListPrice desc

SELECT BusinessEntityID, HireDate
FROM HumanResources.Employee /* seleciona quem foi admitido nos anos de 2009 e 2010 e ordena por data de contratacao */
WHERE HireDate BETWEEN '2009/01/01' and '2010/12/31'
ORDER BY HireDate asc

SELECT count(DISTINCT HireDate) /* conta o numero de datas distintas onde houveram contratacoes*/
FROM HumanResources.Employee WHERE HireDate BETWEEN '2009/01/01' and '2010/12/31'

SELECT BusinessEntityID, HireDate
FROM HumanResources.Employee /* seleciona quem foi admitido nos anos de 2009 e 2010 e ordena por data de contratacao */
WHERE HireDate BETWEEN '2009/01/01' and '2010/12/31'
ORDER BY HireDate asc

SELECT count(DISTINCT HireDate) /* conta o numero de datas distintas onde houveram contratacoes*/
FROM HumanResources.Employee WHERE HireDate BETWEEN '2009/01/01' and '2010/12/31'