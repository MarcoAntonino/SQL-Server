use Store
go

CREATE TABLE Categoria (
    ID int NOT NULL PRIMARY KEY identity(1,1),
    Nome varchar(50) NOT NULL,
    Descrizione varchar(255) NULL,
    Immagine varchar(50)
)
go