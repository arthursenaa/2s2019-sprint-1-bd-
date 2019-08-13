use T_OpFlix

--itens-extras

-- 1-)seleção - trazer todas as categorias, inclusive as que não possuem lançamentos vinculados.

select Nome from Genero

select Lancamento.Nome As Lançamento , Genero.Nome As Genero  
From Lancamento
inner join Genero
on Lancamento.Id_Genero = Genero.IdGenero

--2-)Seleção - trazer todas as plataformas, inclusive as que não possuem lançamentos vinculados.

select Plataforma from Plataforma 

select Plataforma.Plataforma ,Lancamento.Nome As Lançamento 
From Plataforma
inner join Lancamento
on Lancamento.IdPlataforma = Plataforma.IdPlataforma

--3-)-Atualizar o usuário Helena para administrador

update Usuario set Id_TipoUsuario = 2 where Nome = 'Helena'

--4-)Deletar a série Deuses Americanos

select * from Lancamento

delete from Lancamento where Nome = 'Deuses Americanos'
--5-) Atualizar data de lançamento do filme O Rei Leão para a data de lançamento da animação original, 08/07/1994, e alterar veiculo para VHS

update Lancamento set DataLancamento = '08/07/1994' where Nome = 'O Rei Leão'
select * from Lancamento

--6-) Insserir 3 filmes que estão atualmente no cinema

insert into Lancamento(Nome , Sinopse,Duracao,DataLancamento,IdPlataforma,Id_Tipo,Id_Genero)
values ('Vingadores: Ultimato','Após Thanos eliminar metade das criaturas vivas, os Vingadores têm de lidar com a perda de amigos e entes queridos. Com Tony Stark vagando perdido no espaço sem água e comida, Steve Rogers e Natasha Romanov lideram a resistência contra o titã louco.','3h 2min','25/04/2019',2,1,3)

--7-) Inserir as categorias: Terror, Ação, Comédia, Documentário, Drama e Ficção Científica.
insert into Genero(Nome) values ('Ação'),('Comédia'),('Documentário'),('Drama'),('Ficção Científica')