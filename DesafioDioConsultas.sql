-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano 
select Nome, Ano, duracao from Filmes order by Ano asc

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select nome, ano, duracao from Filmes where nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
select nome, ano, duracao from Filmes where ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select nome, ano, duracao from Filmes where ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select nome, duracao from Filmes where duracao > 100 and duracao < 150 order by duracao asc

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select ano, count(*) as QuantidadeDeFilmes from Filmes group by ano order by QuantidadeDeFilmes desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select Id, PrimeiroNome, UltimoNome from Atores where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select Id, PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome asc

-- 10 - Buscar o nome do filme e o gênero
select Nome, Generos.Genero from filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
	inner join Generos on FilmesGenero.IdGenero = Generos.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select Nome, Generos.Genero from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme 
	inner join Generos on FilmesGenero.IdGenero = Generos.Id
where Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from Filmes
inner join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme
	inner join Atores on ElencoFilme.IdAtor = Atores.Id