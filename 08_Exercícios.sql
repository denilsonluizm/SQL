SELECT count(ListPrice) Produtos_mais_caros_que_1500
FROM Production.Product
WHERE ListPrice > 1500

SELECT count(FirstName) Pessoas_que_começam_com_letra_P 
FROM Person.Person
WHERE FirstName like 'p%'

SELECT count(DISTINCT City) Número_de_idades_únicas_onde_clientes_são_cadastrados 
FROM Person.Address

SELECT DISTINCT(City) Cidades_únicas_onde_clientes_são_cadastrados 
FROM Person.Address

SELECT count(ListPrice) Número_produtos_vermelhos_que_custam_entre_500_e_1000
FROM Production.Product
WHERE Color = 'red'
AND ListPrice BETWEEN 500 and 1000

SELECT count(Name) Produtos_cadastrados_que_tem_road_no_nome
FROM Production.Product
WHERE Name like '%road%'