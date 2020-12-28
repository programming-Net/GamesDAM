/*
Script de implementación para juegosDAM

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "juegosDAM"
:setvar DefaultFilePrefix "juegosDAM"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detectar el modo SQLCMD y deshabilitar la ejecución del script si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO

USE [juegosDAM]
GO

/****** Object:  Table [dbo].[consolas]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[contenidos]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[edades]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[fabricantes]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[generos]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[jue_consola]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[jue_contenido]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[jue_genero]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[juegos]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

SET IDENTITY_INSERT [dbo].[consolas] ON
GO

INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (19, N'PS3', N'Consola PlayStation3 de Sony')
GO

INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (24, N'Xbox', N'Consola de Microsoft Xbox')
GO

INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (27, N'Xbox One', N'La nova consola de Microsoft')
GO

INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (28, N'PS4', N'Última versió de consoles de Sony.')
GO

SET IDENTITY_INSERT [dbo].[consolas] OFF
GO

SET IDENTITY_INSERT [dbo].[edades] ON
GO

INSERT [dbo].[edades] ([id], [valor]) VALUES (1, 3)
GO

INSERT [dbo].[edades] ([id], [valor]) VALUES (2, 7)
GO

INSERT [dbo].[edades] ([id], [valor]) VALUES (3, 12)
GO

INSERT [dbo].[edades] ([id], [valor]) VALUES (4, 16)
GO

INSERT [dbo].[edades] ([id], [valor]) VALUES (5, 18)
GO

SET IDENTITY_INSERT [dbo].[edades] OFF
GO

SET IDENTITY_INSERT [dbo].[fabricantes] ON
GO

INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (1, N'2k', N'2kSport')
GO

INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (2, N'SQ', N'Square Enix')
GO

INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (4, N'EA', N'EA Sports')
GO

INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (5, N'ACTI', N'Activision')
GO

SET IDENTITY_INSERT [dbo].[fabricantes] OFF
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 1)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 2)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 4)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 10)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 11)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 2)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 3)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 4)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 11)
GO

SET IDENTITY_INSERT [dbo].[juegos] ON
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (1, N'Call of Duty', N'Juego del Call of Duty', N'./Imatges/call_of_duty.jpg', 12.3, 1, 5, 5)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (2, N'NBA2K14', N'Joc de la NBA', N'./Imatges/nba.jpg', 21.5, 0, 1, 1)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (3, N'FIFA 13', N'Joc de futbol.', N'./Imatges/fifa.jpg', 50.43, 1, 4, 1)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (4, N'Assasins', N'Joc de fantasia', N'./Imatges/assasins.jpg', 32.21, 0, 2, 4)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (5, N'Need for speed', N'Joc de cotxes', NULL, 32.76, 0, 4, 2)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (7, N'Destiny', N'Joc d''acció', N'.\Imatges\destiny.jpg', 32.21, 1, 5, 3)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (10, N'pep', N'pep', NULL, 21, 1, 4, 3)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (11, N'isa', N'isa', NULL, 32, 0, 2, 5)
GO

SET IDENTITY_INSERT [dbo].[juegos] OFF
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

USE [juegosDAM]
GO

/****** Object:  Table [dbo].[consolas]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[contenidos]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[edades]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[fabricantes]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[generos]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[jue_consola]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[jue_contenido]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[jue_genero]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[juegos]    Script Date: 15/01/2014 11:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

SET IDENTITY_INSERT [dbo].[consolas] ON
GO

INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (19, N'PS3', N'Consola PlayStation3 de Sony')
GO

INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (24, N'Xbox', N'Consola de Microsoft Xbox')
GO

INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (27, N'Xbox One', N'La nova consola de Microsoft')
GO

INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (28, N'PS4', N'Última versió de consoles de Sony.')
GO

SET IDENTITY_INSERT [dbo].[consolas] OFF
GO

SET IDENTITY_INSERT [dbo].[edades] ON
GO

INSERT [dbo].[edades] ([id], [valor]) VALUES (1, 3)
GO

INSERT [dbo].[edades] ([id], [valor]) VALUES (2, 7)
GO

INSERT [dbo].[edades] ([id], [valor]) VALUES (3, 12)
GO

INSERT [dbo].[edades] ([id], [valor]) VALUES (4, 16)
GO

INSERT [dbo].[edades] ([id], [valor]) VALUES (5, 18)
GO

SET IDENTITY_INSERT [dbo].[edades] OFF
GO

SET IDENTITY_INSERT [dbo].[fabricantes] ON
GO

INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (1, N'2k', N'2kSport')
GO

INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (2, N'SQ', N'Square Enix')
GO

INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (4, N'EA', N'EA Sports')
GO

INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (5, N'ACTI', N'Activision')
GO

SET IDENTITY_INSERT [dbo].[fabricantes] OFF
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 1)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 2)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 4)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 10)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 11)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 2)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 3)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 4)
GO

INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 11)
GO

SET IDENTITY_INSERT [dbo].[juegos] ON
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (1, N'Call of Duty', N'Juego del Call of Duty', N'./Imatges/call_of_duty.jpg', 12.3, 1, 5, 5)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (2, N'NBA2K14', N'Joc de la NBA', N'./Imatges/nba.jpg', 21.5, 0, 1, 1)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (3, N'FIFA 13', N'Joc de futbol.', N'./Imatges/fifa.jpg', 50.43, 1, 4, 1)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (4, N'Assasins', N'Joc de fantasia', N'./Imatges/assasins.jpg', 32.21, 0, 2, 4)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (5, N'Need for speed', N'Joc de cotxes', NULL, 32.76, 0, 4, 2)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (7, N'Destiny', N'Joc d''acció', N'.\Imatges\destiny.jpg', 32.21, 1, 5, 3)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (10, N'pep', N'pep', NULL, 21, 1, 4, 3)
GO

INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (11, N'isa', N'isa', NULL, 32, 0, 2, 5)
GO

SET IDENTITY_INSERT [dbo].[juegos] OFF
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

GO
PRINT N'Actualización completada.';


GO
