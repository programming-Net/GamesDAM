CREATE TABLE [dbo].[jue_contenido](
	[id_contenido] [int] NOT NULL,
	[id_juego] [int] NOT NULL,
 CONSTRAINT [PK_jue_contenido] PRIMARY KEY CLUSTERED 
(
	[id_contenido] ASC,
	[id_juego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[jue_contenido]  WITH CHECK ADD  CONSTRAINT [FK_jue_contenido_contenidos] FOREIGN KEY([id_contenido])
REFERENCES [dbo].[contenidos] ([id])
GO

ALTER TABLE [dbo].[jue_contenido] CHECK CONSTRAINT [FK_jue_contenido_contenidos]
GO


GO
ALTER TABLE [dbo].[jue_contenido]  WITH CHECK ADD  CONSTRAINT [FK_jue_contenido_juegos] FOREIGN KEY([id_juego])
REFERENCES [dbo].[juegos] ([id])
GO

ALTER TABLE [dbo].[jue_contenido] CHECK CONSTRAINT [FK_jue_contenido_juegos]
GO

