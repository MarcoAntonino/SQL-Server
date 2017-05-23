USE [Store]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (1, N'Marco', N'Antonino', NULL, NULL, NULL, N'3339719801', N'marco.antonino@edu.itspiemonte.it', N'NTNMRC86E04L786K', NULL)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (4, N'Luigi', N'Bottasso', NULL, NULL, NULL, N'3333333333', N'luigi.bottasso@edu.itspiemonte.it', N'QWERTYUI12345678', NULL)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [RagioneSociale], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva]) VALUES (5, N'Davide', N'Colangelo', NULL, NULL, NULL, N'1234567892', N'davide.colangelo@edu.itspiemonte.it', N'zxcvbnmas1234567', NULL)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
