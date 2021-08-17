--CONCAT uni as strings
SELECT CONCAT(FirstName, ' ', MiddleName, ' ', LastName) Nome_Completo
FROM Person.Person

--UPPER coloca tudo em caixa alta, LOWER o contrário
SELECT UPPER(FirstName), LOWER(FirstName)
FROM Person.Person

--LEN conta o numero de caracteres da string
SELECT FirstName, LEN(FirstName)
FROM Person.Person

-- SUBSTRING extrai strings SUBSTRING(coluna,<inicio>,<qnt de strings>)
SELECT FirstName, SUBSTRING(FirstName,1,5)
FROM Person.Person

--REPLACE substitui alguma string por outra REPLACE(coluna, <o q vai ser substit>, <o que entra no lugar>)
SELECT ProductNumber, REPLACE(ProductNumber, '-', '>>>')
FROM Production.Product

