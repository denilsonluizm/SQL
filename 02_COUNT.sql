SELECT count(*) /* conta o numero de produtos */
FROM Production.Product

SELECT count(Size) /* conta quantos tamanhos de produtos temos (ou # de produtos com tamanhos especificados) */
FROM Production.Product

SELECT count(DISTINCT Size) /* conta o numero de tamanhos diferentes (# de linhas com entradas diferentes na coluna Size)*/
FROM Production.Product