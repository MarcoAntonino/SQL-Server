CREATE DATABASE ecommerce;

CREATE TABLE Categoria (
	IdCategoria int NOT NULL,
	Nome varchar(50) NOT NULL,
	Descrizione varchar(100),
	Primary Key (IdCategoria)
	)

CREATE TABLE Prodotto (
	IdProdotto int NOT NULL,
	Descrizione varchar(100),
	Nome varchar(50) NOT NULL.
	Prezzo double NOT NULL,
	Giacenza int NOT NULL,
	Categoria int NOT NULL 
	PRIMARY KEY (IdProdotto)
	FOREIGN KEY (Categoria) REFERENCES Categoria(IdCategoria)
	)

CREATE TABLE Cliente (
	IdCliente int NOT NULL,
	RagioneSociale varchar(50) NOT NULL,
	Nome varchar(50) NOT NULL,
	Cognome varchar(50) NOT NULL,
	CodiceFiscale varchar(50) NOT NULL,
	PartitaIva varchar(50)
	Primary Key (IdCliente)
	)

CREATE TABLE Ordine (
	IdOrdine int NOT NULL,
	DataOrdine date NOT NULL,
	StatoOrdine 




