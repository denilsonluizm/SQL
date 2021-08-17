SELECT* /* seleciona a(s) linha(s) onde nome e sobrenome sao especificados */
FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs'

SELECT* /* seleciona a linha que tem uma entrada específica */
FROM Person.EmailAddress
WHERE BusinessEntityID = '26'

SELECT* 
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = '1'

SELECT Name
FROM Production.Product
WHERE Weight > '500' and Weight < '700'