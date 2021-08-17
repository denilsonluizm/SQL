SELECT* /* discretiza a selecao */
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13)

SELECT* /* seleciona o oposto da selecao discretizada */
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,7,13)