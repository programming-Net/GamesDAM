CREATE TABLE [dbo].[jue_consola](
	[id_consola] [int] NOT NULL,
	[id_juego] [int] NOT NULL,
 CONSTRAINT [PK_jue_consola] PRIMARY KEY CLUSTERED 
(
	[id_consola] ASC,
	[id_juego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[jue_consola]  WITH CHECK ADD  CONSTRAINT [FK_jue_consola_consolas] FOREIGN KEY([id_consola])
REFERENCES [dbo].[consolas] ([id])
GO

ALTER TABLE [dbo].[jue_consola] CHECK CONSTRAINT [FK_jue_consola_consolas]
GO


GO
ALTER TABLE [dbo].[jue_consola]  WITH CHECK ADD  CONSTRAINT [FK_jue_consola_juegos] FOREIGN KEY([id_juego])
REFERENCES [dbo].[juegos] ([id])
GO

ALTER TABLE [dbo].[jue_consola] CHECK CONSTRAINT [FK_jue_consola_juegos]
GO

