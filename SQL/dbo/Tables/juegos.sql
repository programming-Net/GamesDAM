CREATE TABLE [dbo].[juegos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[image] [varchar](150) NULL,
	[precio] [float] NULL,
	[en_linea] [bit] NULL,
	[id_fabricante] [int] NOT NULL,
	[id_edad] [int] NOT NULL,
 CONSTRAINT [PK_juegos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[juegos]  WITH CHECK ADD  CONSTRAINT [FK_juegos_edades] FOREIGN KEY([id_edad])
REFERENCES [dbo].[edades] ([id])
GO

ALTER TABLE [dbo].[juegos] CHECK CONSTRAINT [FK_juegos_edades]
GO


GO
ALTER TABLE [dbo].[juegos]  WITH CHECK ADD  CONSTRAINT [FK_juegos_fabricantes] FOREIGN KEY([id_fabricante])
REFERENCES [dbo].[fabricantes] ([id])
GO

ALTER TABLE [dbo].[juegos] CHECK CONSTRAINT [FK_juegos_fabricantes]
GO


GO
/****** Object:  Index [IX_juegos]    Script Date: 15/01/2014 11:08:45 ******/
/****** Object:  Index [IX_juegos]    Script Date: 15/01/2014 11:08:45 ******/
ALTER TABLE [dbo].[juegos] ADD  CONSTRAINT [IX_juegos] UNIQUE NONCLUSTERED 
(
	[titulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]