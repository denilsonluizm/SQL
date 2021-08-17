-- Union combina 2 ou mais resultados de um SELECT
-- elimina os duplicados, selecionando apenas VALORES DISTINTOS

SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE Name LIKE '%chain%'
UNION
SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE Name LIKE '%decal%'
-- um ORDER BY no final cale pro resultado todo

-- pessoas que tem nome do meio A e/ou title MR
SELECT MiddleName, Title, FirstName
FROM Person.Person
WHERE Title = 'Mr.'
UNION -- note que o UNION faz o papel do conectivo lógico e/ou
SELECT MiddleName, Title, FirstName
FROM Person.Person
WHERE MiddleName = 'A'
-- como UNION seleciona valores distintos, para o resultado acima podem ocorrer erros, uma vez que possa haver mais de uma pessoa
-- que tenha, por exemplo, title e midlename iguais (assim a aliminação de valores iguais, nesse caso, implica perda de informação)
-- para garantir é bom pedir para exibir uma informação que é única para cada um, algum ID, por exemplo.

