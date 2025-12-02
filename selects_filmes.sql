-- Mostrando a Tabela toda 
SELECT * FROM filmes


-- 1. Filmes com melhor avaliação
SELECT titulo, diretor, nota_imdb 
FROM filmes 
ORDER BY nota_imdb DESC 
LIMIT 10;

-- 2. Filmes por década
SELECT 
    (ano_lancamento / 10) * 10 as decada,
    COUNT(*) as total_filmes,
    AVG(nota_imdb) as media_nota
FROM filmes 
GROUP BY decada 
ORDER BY decada;

-- 3. Diretores com mais filmes na lista
SELECT diretor, COUNT(*) as total_filmes, AVG(nota_imdb) as media_nota
FROM filmes 
GROUP BY diretor 
HAVING COUNT(*) > 1
ORDER BY total_filmes DESC;

-- 4. Gêneros mais populares
SELECT genero, COUNT(*) as total, AVG(nota_imdb) as media_nota
FROM filmes 
GROUP BY genero 
ORDER BY total DESC;

-- 5. Filmes mais longos
SELECT titulo, duracao_minutos, genero
FROM filmes 
ORDER BY duracao_minutos DESC 
LIMIT 10;

-- 6. Eu quero saber quais são os filmes do Diretor Christopher Nolan
select * from Filmes where diretor = "Christopher Nolan"
-- 7. Eu quero saber quais são os filmes do James Gunn
select * from Filmes where diretor = "James Gunn"
-- 8. Eu quero saber quais os filmes de ação lançados em 2016
select * from Filmes where ano_lancamento = "2016"
-- 9. Eu quero saber quais os filmes do batman e quais os diretores
select * from Filmes where titulo like "%Batman%"

-- 10. Eu quero saber quais os filmes de terror e drama lançado entre 1980 e 2002
select * from filmes where genero in ("Terror", "Drama") and ano_lancamento BETWEEN 1980 and 2002 order by ano_lancamento
-- 11. Eu quero Saber quantos filmes foram lançados em 1999
select * from Filmes where ano_lancamento = 1999

-- 12. Eu quero saber quantos filmes tem o diretor Quentin Tarantino
select count(titulo) as total_filmes from Filmes where diretor = "Quentin Tarantino"

-- 13. Eu quero saber quais os filmes do James Cameron e quais os generos deles
select titulo,genero from Filmes where diretor = "James Cameron"

-- 14. Por fim vamos adiconar as informações do seu filme favorito na tabela.
insert into filmes (titulo, genero, ano_lancamento, duracao_minutos, diretor, nota_imdb) values ("Prenda-Me se For Capaz", "Crime", 2002, 141, "Steven Spielberg", 8.2)

-- 15. Vamos adiconar as informações do filme que o professor odeia.
insert into filmes (titulo, genero, ano_lancamento, duracao_minutos, diretor, nota_imdb) values ("Homem-Aranha: Longe de Casa", "Ficção Científica", 2019, 130, "Jon Watts", 7.3)

-- 16. Vamos deletar esse filme que o professor detesta.
delete from Filmes where titulo = "Homem-Aranha: Longe de Casa"

SELECT * FROM filmes



