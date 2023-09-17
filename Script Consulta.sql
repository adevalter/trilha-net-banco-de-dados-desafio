/*1 - Buscar o nome e ano dos filmes*/
SELECT 
	Nome,Ano 
FROM
	FILMES;

/*2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano*/
SELECT 
	Nome,Ano,Duracao
FROM
	FILMES 
ORDER BY Ano;

/*3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração*/

SELECT 
	Nome,Ano,Duracao 
FROM
	FILMES
WHERE Nome = 'De Volta para o Futuro';

/*4 - Buscar os filmes lançados em 1997*/

SELECT 
	Nome,Ano,Duracao 
FROM
	FILMES
WHERE Ano = 1997;

/*5 - Buscar os filmes lançados APÓS o ano 2000*/

SELECT 
	Nome,Ano,Duracao 
FROM
	FILMES
WHERE Ano >= 2000;

/*6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente*/

SELECT 
	Nome,Ano,Duracao 
FROM
	FILMES
WHERE 
	Duracao > 100 AND Duracao < 150
ORDER By Duracao;

/*7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente*/

SELECT 
	Ano, Count(1) Quantidade
FROM
	FILMES
GROUP BY Ano
ORDER By Quantidade desc;

/*8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome*/

SELECT 
	PrimeiroNome, UltimoNome, Genero 
FROM 
	Atores
WHERE Genero = 'M';

/*9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome*/
SELECT 
	PrimeiroNome, UltimoNome, Genero 
FROM 
	Atores
WHERE Genero = 'F'
ORDER By PrimeiroNome;


/*10 - Buscar o nome do filme e o gênero*/
SELECT 
	F.Nome,G.Genero
FROM
	Filmes F
INNER JOIN
	FilmesGenero FG On F.Id = FG.IdFilme
INNER JOIN 
	Generos G on G.Id = FG.IdGenero

/*11 - Buscar o nome do filme e o gênero do tipo "Mistério"*/
SELECT 
	F.Nome,G.Genero
FROM
	Filmes F
INNER JOIN
	FilmesGenero FG On F.Id = FG.IdFilme
INNER JOIN 
	Generos G on G.Id = FG.IdGenero
WHERE 
	G.Genero = 'Mistério';


/*12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel*/
select F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel 
	from 
Atores A 
	INNER JOIN
ElencoFilme EF on EF.IdAtor = A.Id
	INNER JOIN
Filmes F on F.Id = EF.IdFilme;




	
