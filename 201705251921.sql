use istat
go

insert into provincia(codiceprovincia, idregione, denominazione, sigla)
select distinct [codice provincia] as codice