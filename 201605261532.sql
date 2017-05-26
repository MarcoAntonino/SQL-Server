--tutte le regioni del nordovest

--use Istat
--go

--select r.Denominazione from Regione r
--inner join RipartizioneGeografica rg
--ON r.IdRipartizioneGeografica=rg.Id
--where rg.Denominazione='Nord-Ovest'
--go

--Tutte le province che stanno nel nord-est

--select p.Denominazione +'('+p.Sigla+')' as Provincia --si possono mettere insieme per fare un formato
--from Regione r
--inner join RipartizioneGeografica rg
--ON r.IdRipartizioneGeografica=rg.Id
--inner join Provincia p
--on p.IdRegione = r.Id
--where rg.Denominazione='Nord-est'
--go

--Tutti i comuni e relativa popolazione della provincia di Macerata

--select c.Denominazione as Comune, c.Popolazione
--from Comune c , Provincia p
--where c.IdProvincia=p.Id and p.Denominazione='macerata'
--go

--Trovare la regione, la provincia, il comune che come popolazione supera 200k

--select r.Denominazione as Regione, p.Denominazione as Provincia, c.Denominazione as  Comune, c.Popolazione as Popolazione
--from Regione r, Provincia p, Comune c
--where c.IdProvincia=p.Id and p.IdRegione=r.Id and c.Popolazione>=100000
--order by c.Popolazione desc
--go

--Trovare le prime 10 la regione, la provincia, il comune che come popolazione supera 200k

--select top 10 r.Denominazione as Regione, p.Denominazione as Provincia, c.Denominazione as  Comune, c.Popolazione as Popolazione
--from Regione r, Provincia p, Comune c
--where c.IdProvincia=p.Id and p.IdRegione=r.Id and c.Popolazione>=100000
--order by c.Popolazione desc
--go

--Contate quanti sono i comuni della provincia di cuneo

--select COUNT(*) as NumComuni
--from Comune c, Provincia p
--where c.IdProvincia=p.Id and p.Denominazione='cuneo'
--go

--Quanti sono gli abitanti che si trovano nel Molise

--select SUM(c.Popolazione) as 'Abitanti del Molise'
--from Regione r, Provincia p, Comune c
--where c.IdProvincia=p.Id and p.IdRegione=r.Id and r.Denominazione='molise'
--go

--Tutti i comuni che iniziano per 'CAT'

--Select c.denominazione
--from comune c
--where c.Denominazione like 'cat%'
--order by c.Denominazione
--go

--Quanti comuni iniziano con cat

--Select COUNT(*)
--from comune c
--where c.Denominazione like 'cat%'
--go

--Solo i comuni che hanno popolazione tra 10k e 15k

--Select c.denominazione, c.Popolazione 
--from Comune c
--where c.Popolazione between 10000 and 15000
--order by c.Denominazione
--go

--Per ogni regione, quante sono le province

--Select r.denominazione, count(*) as 'Numero di province'
--from regione r, Provincia p
--where p.IdRegione=r.Id 
--group by r.Denominazione
--order by count(*) desc

--

--Qual'è la regione che ha più comuni




