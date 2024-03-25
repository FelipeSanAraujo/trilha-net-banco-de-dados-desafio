--1
Select Nome, Ano From Filmes

--2
Select Nome, Ano, Duracao From Filmes
Order By Ano

--3
Select Nome, Ano, Duracao From Filmes
Where Nome = 'De volta para o futuro'

--4
Select * From Filmes
Where Ano = 1997

--5
Select * From Filmes
Where Ano > 2000

--6
Select * From Filmes
Where Duracao > 100 And Duracao < 150
Order By Duracao

--7
Select Ano, Count(Ano) As Quantidade
From Filmes
Group By Ano
Order By Quantidade Desc

--8
Select * From Atores
Where Genero = 'M'

--9
Select * From Atores
Where Genero = 'F'
Order By PrimeiroNome

--10
Select f.Nome, g.Genero From FilmesGenero
Inner Join Filmes As f On(FilmesGenero.IdFilme = f.Id)
Inner join Generos As g On(FilmesGenero.IdGenero = g.Id)

--11
Select f.Nome, g.Genero From FilmesGenero
Inner Join Filmes As f On(FilmesGenero.IdFilme = f.Id)
Inner join Generos As g On(FilmesGenero.IdGenero = g.Id)
Where g.Genero = 'Mistério'

--12
Select f.Nome, a.PrimeiroNome, a.UltimoNome, Papel From ElencoFilme
Inner join Filmes As f On(ElencoFilme.IdFilme = f.Id)
Inner join Atores As a On(ElencoFilme.IdAtor = a.Id)
