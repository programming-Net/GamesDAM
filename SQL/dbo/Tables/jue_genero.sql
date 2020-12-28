CREATE TABLE [dbo].[jue_genero](
	[id_genero] [int] NOT NULL,
	[id_juego] [int] NOT NULL,
 CONSTRAINT [PK_jue_genero] PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC,
	[id_juego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[jue_genero]  WITH CHECK ADD  CONSTRAINT [FK_jue_genero_generos] FOREIGN KEY([id_genero])
REFERENCES [dbo].[generos] ([id])
GO

ALTER TABLE [dbo].[jue_genero] CHECK CONSTRAINT [FK_jue_genero_generos]
GO


GO
ALTER TABLE [dbo].[jue_genero]  WITH CHECK ADD  CONSTRAINT [FK_jue_genero_juegos] FOREIGN KEY([id_juego])
REFERENCES [dbo].[juegos] ([id])
GO

ALTER TABLE [dbo].[jue_genero] CHECK CONSTRAINT [FK_jue_genero_juegos]
GO

