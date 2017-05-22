use Store
go

CREATE TABLE Categoria (
    ID int NOT NULL PRIMARY KEY identity(1,1),
    Nome varchar(50) NOT NULL,
    Descrizione varchar(255) NULL,
    Immagine varchar(50)
)
go

CREATE TABLE Prodotto (
    ID int NOT NULL PRIMARY KEY identity(1,1),
    Nome varchar NOT NULL,
    Descrizione varchar(255)NOT NULL,
    Prezzo float NOT NULL,
    Giacenza int NOT NULL,
    IDCategoria int NOT NULL,
    FOREIGN KEY(IDCategoria) REFERENCES Categoria(ID)
)
go

CREATE TABLE Cliente (
    ID int NOT NULL PRIMARY KEY identity(1,1),
    Nome varchar(50) NOT NULL,
    Cognome varchar(50)NOT NULL,
    CodiceFiscale varchar(20) NOT NULL,
    Partitaiva varchar(20)NOT NULL,
    RagioneSociale varchar(50)NOT NULL,
    Email varchar(20)NOT NULL,
    Telefono varchar(50)NOT NULL
)
go

CREATE TABLE Gallery (
	ID int NOT NULL PRIMARY KEY identity(1,1),
	Immagine varchar(255) NOT NULL,
	Didascalia varchar(100),
	IDProdotto int NOT NULL,
	FOREIGN KEY(IDProdotto) REFERENCES Prodotto(ID)
)
go

CREATE TABLE Indirizzo (
    ID int NOT NULL PRIMARY KEY identity(1,1),
    Via varchar(80) NOT NULL,
    Citta varchar(80) NOT NULL,
    Provincia varchar(80) NOT NULL,
    Paese varchar(80) NOT NULL,
    IDCliente int NOT NULL,
    FOREIGN KEY(IDCliente) REFERENCES Cliente(ID)

)
go

CREATE TABLE Ordine (
    ID int PRIMARY KEY identity(1,1),
    Data datetime NOT NULL,
    IDCliente int NOT NULL,
    FOREIGN KEY(IDCliente) REFERENCES Cliente(ID)
	
)
go

CREATE TABLE Stato (
    ID int PRIMARY KEY identity(1,1),
    Nome varchar(26) NOT NULL,
	IDOrdine int NOT NULL,
	FOREIGN KEY (IDOrdine) REFERENCES Ordine(ID)
)
go

CREATE TABLE DettaglioOrdine(
	ID int PRIMARY KEY identity(1,1),
	Quantità int NOT NULL,
	IDOrdine int NOT NULL,
	IDProdotto int NOT NULL,
	FOREIGN KEY(IDProdotto) REFERENCES Prodotto(ID),
	FOREIGN KEY (IDOrdine) REFERENCES Ordine(ID)
)
go



