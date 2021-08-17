-- Pessoas que moram na mesma regiao
SELECT DISTINCT A.ContactName, A.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region
ORDER BY A.Region

SELECT ContactName, Region
FROM Customers
WHERE Region IS NOT NULL
ORDER BY Region

-- pessoas contratadas no mesmo ano
SELECT DISTINCT A.FirstName, DATEPART(YEAR, A.HireDate) --, B.FirstName, B.HireDate
FROM Employees A, Employees B
WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR, B.HireDate)

SELECT*
FROM Employees

-- produtos com o mesmo percentual de desconto
SELECT A.ProductID, A.Discount, B.ProductID, B.Discount
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount
