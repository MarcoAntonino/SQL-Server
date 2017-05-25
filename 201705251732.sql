Select distinct [codice provincia] as codiceprovincia,
[codice regione] as idregione,
[Denominazione provincia] as Denominazione, [sigla automobilistica] as sigla from COD_REG_PROV$
where [Denominazione provincia] is not null