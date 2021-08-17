--quais pessoas têm um cartão de crédito
SELECT*
FROM Person.Person pp
INNER JOIN Sales.PersonCreditCard pc 
ON pp.BusinessEntityID = pc.BusinessEntityID
-- com INNER JOIN temos 19118 linhas, apenas a interseccao das tabelas pois person.person tem 19972 linhas

SELECT*
FROM Person.Person pp
LEFT JOIN Sales.PersonCreditCard pc 
ON pp.BusinessEntityID = pc.BusinessEntityID
-- com LEFT JOIN temos 19972 linhas e isso signifa que há pessoas que não têm cartão de crédito registrado
-- o left side é person.person e o right side é sales.personcreditcard 

-- pessoas que não tem cartão de crédito registrado:
SELECT*
FROM Person.Person pp
LEFT JOIN Sales.PersonCreditCard pc 
ON pp.BusinessEntityID = pc.BusinessEntityID
WHERE pc.BusinessEntityID IS NULL
-- mostra exatamente o temos em person.person mas não temos em sales.personcreditcard

