/* aqui estamos unindo informações de 2 tabelas atraves de uma mesma coluna em comum */

SELECT Person.Person.BusinessEntityID, Person.Person.FirstName, Person.Person.LastName, Person.EmailAddress.EmailAddress
FROM Person.Person
INNER JOIN Person.EmailAddress ON Person.Person.BusinessEntityID = Person.EmailAddress.BusinessEntityID

/* a seguir usamos o comando AS para renomear as tabelas Person.Person e Person.EmailAddress */

SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
FROM Person.Person as p
INNER JOIN Person.EmailAddress AS pe ON p.BusinessEntityID = pe.BusinessEntityID

SELECT p.Name, p.ListPrice, ps.Name AS Subcategoria
FROM Production.Product AS p
INNER JOIN Production.ProductSubcategory AS ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID

SELECT * /* quando não definimos as colunas o INNER JOIN simplismente junta as duas tabelas */
FROM Person.BusinessEntityAddress AS pb
INNER JOIN Person.Address AS pa ON pa.AddressID = pb.AddressID

SELECT ph.BusinessEntityID, pt.Name, ph.PhoneNumber, pt.PhoneNumberTypeID
FROM Person.PersonPhone AS ph
INNER JOIN Person.PhoneNumberType AS pt ON ph.PhoneNumberTypeID = pt.PhoneNumberTypeID
WHERE pt.Name = 'Work' /* com a função WHERE podemos filtrar a informação */

-- AddressID, City, StateProvinceID, Nome do Estado

SELECT pa.AddressID, pa.City, pa.StateProvinceID, ps.Name
FROM Person.Address AS pa
INNER JOIN Person.StateProvince AS ps ON pa.StateProvinceID = ps.StateProvinceID

-- Se quisermos, por exemplo, filtrar por país, podemos usar a função WHERE 

SELECT pa.AddressID, pa.City, pa.StateProvinceID, ps.Name, ps.CountryRegionCode
FROM Person.Address AS pa
INNER JOIN Person.StateProvince AS ps ON pa.StateProvinceID = ps.StateProvinceID
WHERE ps.CountryRegionCode = 'US' -- Aqui selecionamos apenas endereços dos Estados Unidos