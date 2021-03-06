USE [master]
GO
/****** Object:  Database [Store]    Script Date: 25/05/2017 14:58:05 ******/
CREATE DATABASE [Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Store', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS01\MSSQL\DATA\Store.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Store_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS01\MSSQL\DATA\Store_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Store] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Store] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Store] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Store] SET  MULTI_USER 
GO
ALTER DATABASE [Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Store] SET QUERY_STORE = OFF
GO
USE [Store]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Store]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 25/05/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descrizione] [varchar](255) NULL,
	[Immagine] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 25/05/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Cognome] [varchar](50) NOT NULL,
	[RagioneSociale] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Fax] [varchar](20) NULL,
	[Cellulare] [varchar](20) NULL,
	[Email] [varchar](50) NOT NULL,
	[CodiceFiscale] [varchar](16) NOT NULL,
	[PartitaIva] [varchar](20) NULL,
 CONSTRAINT [PK__Cliente__3214EC27D6F8A940] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DettaglioOrdine]    Script Date: 25/05/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DettaglioOrdine](
	[IdProdotto] [int] NOT NULL,
	[IdOrdine] [int] NOT NULL,
	[Quantità] [int] NOT NULL,
 CONSTRAINT [PK_DettaglioOrdine] PRIMARY KEY CLUSTERED 
(
	[IdProdotto] ASC,
	[IdOrdine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 25/05/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProdotto] [int] NOT NULL,
	[Immagine] [varchar](100) NOT NULL,
	[Didascalia] [varchar](255) NOT NULL,
 CONSTRAINT [PK__Gallery__3214EC277DAFBE69] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Indirizzo]    Script Date: 25/05/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indirizzo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Via] [varchar](100) NOT NULL,
	[Cap] [char](5) NOT NULL,
	[Citta] [varchar](100) NOT NULL,
	[Provincia] [char](2) NOT NULL,
	[Fattura] [bit] NOT NULL,
	[Spedizione] [bit] NOT NULL,
 CONSTRAINT [PK__Indirizz__3214EC275668745F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ordine]    Script Date: 25/05/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Data] [datetime] NOT NULL,
	[IdStato] [int] NOT NULL,
	[IdFatturazione] [int] NOT NULL,
	[IdSpedizione] [int] NOT NULL,
 CONSTRAINT [PK__Ordine__3214EC277D5AB51B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prodotto]    Script Date: 25/05/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prodotto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descrizione] [text] NULL,
	[Prezzo] [float] NOT NULL,
	[Giacenza] [int] NOT NULL,
 CONSTRAINT [PK__Prodotto__3214EC273D1DEEC2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stato]    Script Date: 25/05/2017 14:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stato](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Stato__3214EC2788177BB0] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (1, N'Abbigliamento Uomo', NULL, NULL)
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (2, N'Abbigliamento Donna', NULL, NULL)
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (3, N'Scarpe Uomo', NULL, NULL)
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (4, N'Scarpe Donna', NULL, NULL)
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (5, N'Accessori Uomo', NULL, NULL)
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (6, N'Accessori Donna', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Categoria] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (1, N'Marco', N'Antonino', NULL, NULL, NULL, N'3339719801', N'marco.antonino@edu.itspiemonte.it', N'NTNMRC86E04L786K', NULL)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (4, N'Luigi', N'Bottasso', NULL, NULL, NULL, N'3333333333', N'luigi.bottasso@edu.itspiemonte.it', N'QWERTYUI12345678', NULL)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (5, N'Davide', N'Colangelo', NULL, NULL, NULL, N'1234567892', N'davide.colangelo@edu.itspiemonte.it', N'zxcvbnmas1234567', NULL)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Cliente_CodiceFiscale]    Script Date: 25/05/2017 14:58:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Cliente_CodiceFiscale] ON [dbo].[Cliente]
(
	[CodiceFiscale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Cliente_Email]    Script Date: 25/05/2017 14:58:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Cliente_Email] ON [dbo].[Cliente]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DettaglioOrdine]  WITH CHECK ADD  CONSTRAINT [FK__Dettaglio__IDOrd__36B12243] FOREIGN KEY([IdOrdine])
REFERENCES [dbo].[Ordine] ([Id])
GO
ALTER TABLE [dbo].[DettaglioOrdine] CHECK CONSTRAINT [FK__Dettaglio__IDOrd__36B12243]
GO
ALTER TABLE [dbo].[DettaglioOrdine]  WITH CHECK ADD  CONSTRAINT [FK__Dettaglio__IDPro__35BCFE0A] FOREIGN KEY([IdProdotto])
REFERENCES [dbo].[Prodotto] ([Id])
GO
ALTER TABLE [dbo].[DettaglioOrdine] CHECK CONSTRAINT [FK__Dettaglio__IDPro__35BCFE0A]
GO
ALTER TABLE [dbo].[Gallery]  WITH CHECK ADD  CONSTRAINT [FK__Gallery__IDProdo__2A4B4B5E] FOREIGN KEY([IdProdotto])
REFERENCES [dbo].[Prodotto] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Gallery] CHECK CONSTRAINT [FK__Gallery__IDProdo__2A4B4B5E]
GO
ALTER TABLE [dbo].[Indirizzo]  WITH CHECK ADD  CONSTRAINT [FK__Indirizzo__IDCli__2D27B809] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Indirizzo] CHECK CONSTRAINT [FK__Indirizzo__IDCli__2D27B809]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK_Ordine_IndirizzoFatturazione] FOREIGN KEY([IdFatturazione])
REFERENCES [dbo].[Indirizzo] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK_Ordine_IndirizzoFatturazione]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK_Ordine_IndirizzoSpedizione] FOREIGN KEY([IdSpedizione])
REFERENCES [dbo].[Indirizzo] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK_Ordine_IndirizzoSpedizione]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK_Ordine_Stato] FOREIGN KEY([IdStato])
REFERENCES [dbo].[Stato] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK_Ordine_Stato]
GO
ALTER TABLE [dbo].[Prodotto]  WITH CHECK ADD  CONSTRAINT [FK_Prodotto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Prodotto] CHECK CONSTRAINT [FK_Prodotto_Categoria]
GO
USE [master]
GO
ALTER DATABASE [Store] SET  READ_WRITE 
GO
