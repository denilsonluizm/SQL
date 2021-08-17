SELECT FirstName, LastName
FROM Person.Person          /* busca alguma entrada, na tabela, que comece com 'ovi' */
WHERE FirstName like 'ovi%'

SELECT FirstName, LastName
FROM Person.Person         /* busca alguma entrada, na tabela, que termine com 'ovi' */
WHERE FirstName like '%to'

SELECT FirstName, LastName
FROM Person.Person         /* busca alguma entrada, na tabela, que tenha 'essa' no meio */
WHERE FirstName like '%essa%'

/* se vc usar o _ no lugar de % vc limita o numero de caracteres, para antes ou depois do trecho que vc busca */