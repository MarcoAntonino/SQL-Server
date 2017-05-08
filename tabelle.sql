CREATE TABLE categoria (
    ID int(11) PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(50) NOT NULL,
    Descrizione varchar(255) NOT NULL
     
)

CREATE TABLE Prodotto (
    ID int(11) PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(50) NOT NULL,
    Descrizione varchar(255)NOT NULL,
    Prezzo double(25)NOT NULL,
    Giacenza int(20)NOT NULL
    IDCategoria int NOT NULL,
    FOREIGN KEY(IDCategoria) REFERENCES categoria(ID)
     
)

CREATE TABLE Cliente (
    ID int(11) PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(50) NOT NULL,
    Cognome varchar(50)NOT NULL,
    CodiceFiscale varchar(20) PRIMARY KEY NOT NULL,
    Partitaiva varchar(20)NOT NULL,
    RagioneSociale varchar(50)NOT NULL,
    Email varchar(20)NOT NULL,
    Telefono varchar(50)NOT NULL
     
)
CREATE TABLE Indirizzo (
    ID int PRIMARY KEY AUTO_INCREMENT,
    Via varchar(80) NOT NULL,
    Citta varchar(80) NOT NULL,
    Provincia varchar(80) NOT NULL,
    Paese varchar(80) NOT NULL,
    IDCliente int NOT NULL,
    FOREIGN KEY(IDCliente) REFERENCES Cliente(ID)
     
)


CREATE TABLE Ordine (
    ID int(11) PRIMARY KEY AUTO_INCREMENT,
    Data datetime NOT NULL
     
)
CREATE TABLE Stato (
    ID int(11) PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(26) NOT NULL
     
)
CREATE TABLE Seleziona (
    IDProdotto int,
    IDOrdine int,
    PRIMARY KEY(IDProdotto,IDOrdine),
    FOREIGN KEY(IDProdotto) REFERENCES Prodotto(ID),
    FOREIGN KEY(IDOrdine) REFERENCES Ordine(ID), 
)

