-- produtos cujo preco está acima da média
SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)
ORDER BY ListPrice DESC

-- nome das pessoas cujo cargo é Design Engineer
-- sem o SUB SELECT:
SELECT pp.BusinessEntityID, pp.FirstName 
FROM Person.Person pp
INNER JOIN HumanResources.Employee he ON pp.BusinessEntityID = he.BusinessEntityID
WHERE he.JobTitle = 'Design Engineer'
-- com o SUB SELECT:
SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID 
                            FROM HumanResources.Employee
                            WHERE JobTitle = 'Design Engineer')

-- endereços que estão no estado de Alberta
SELECT AddressLine1
FROM Person.Address
WHERE StateProvinceID IN (SELECT StateProvinceID
                            FROM Person.StateProvince
                            WHERE Name = 'Alberta')
