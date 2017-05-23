USE [Store]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 23/05/2017 16:32:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/05/2017 16:32:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DettaglioOrdine]    Script Date: 23/05/2017 16:32:25 ******/
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
/****** Object:  Table [dbo].[Gallery]    Script Date: 23/05/2017 16:32:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Indirizzo]    Script Date: 23/05/2017 16:32:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ordine]    Script Date: 23/05/2017 16:32:25 ******/
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
/****** Object:  Table [dbo].[Prodotto]    Script Date: 23/05/2017 16:32:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stato]    Script Date: 23/05/2017 16:32:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
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
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK__Ordine__IDClient__300424B4] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK__Ordine__IDClient__300424B4]
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
