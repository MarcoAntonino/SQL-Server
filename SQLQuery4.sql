use Istat
go

insert into Regione(codiceregione,idRipartizioneGeografica,denominazione)
Select distinct [codice regione] as codiceregione,
[codice ripartizione] as idRipartizioneGeografica, 
[Denominazione regione] as Denominazione from COD_REG_PROV$ 
where [codice regione] is not null 