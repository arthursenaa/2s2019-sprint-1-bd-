use T_OpFlix

--itens-extras

-- 1-)sele��o - trazer todas as categorias, inclusive as que n�o possuem lan�amentos vinculados.

select Nome from Genero

select Lancamento.Nome As Lan�amento , Genero.Nome As Genero  
From Lancamento
inner join Genero
on Lancamento.Id_Genero = Genero.IdGenero

--2-)Sele��o - trazer todas as plataformas, inclusive as que n�o possuem lan�amentos vinculados.

select Plataforma from Plataforma 

select Plataforma.Plataforma ,Lancamento.Nome As Lan�amento 
From Plataforma
inner join Lancamento
on Lancamento.IdPlataforma = Plataforma.IdPlataforma

--3-)-Atualizar o usu�rio Helena para administrador

update Usuario set Id_TipoUsuario = 2 where Nome = 'Helena'

--4-)Deletar a s�rie Deuses Americanos

select * from Lancamento

delete from Lancamento where Nome = 'Deuses Americanos'
--5-) Atualizar data de lan�amento do filme O Rei Le�o para a data de lan�amento da anima��o original, 08/07/1994, e alterar veiculo para VHS

update Lancamento set DataLancamento = '08/07/1994' where Nome = 'O Rei Le�o'
select * from Lancamento

--6-) Insserir 3 filmes que est�o atualmente no cinema

insert into Lancamento(Nome , Sinopse,Duracao,DataLancamento,IdPlataforma,Id_Tipo,Id_Genero)
values ('Vingadores: Ultimato','Ap�s Thanos eliminar metade das criaturas vivas, os Vingadores t�m de lidar com a perda de amigos e entes queridos. Com Tony Stark vagando perdido no espa�o sem �gua e comida, Steve Rogers e Natasha Romanov lideram a resist�ncia contra o tit� louco.','3h 2min','25/04/2019',2,1,3)

--7-) Inserir as categorias: Terror, A��o, Com�dia, Document�rio, Drama e Fic��o Cient�fica.
insert into Genero(Nome) values ('A��o'),('Com�dia'),('Document�rio'),('Drama'),('Fic��o Cient�fica')