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
/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/



SET IDENTITY_INSERT [dbo].[consolas] ON 
INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (19, N'PS3', N'Consola PlayStation3 de Sony')
INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (24, N'Xbox', N'Consola de Microsoft Xbox')
INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (27, N'Xbox One', N'La nova consola de Microsoft')
INSERT [dbo].[consolas] ([id], [codigo], [descripcion]) VALUES (28, N'PS4', N'Última versió de consoles de Sony.')
SET IDENTITY_INSERT [dbo].[consolas] OFF
SET IDENTITY_INSERT [dbo].[edades] ON 

INSERT [dbo].[edades] ([id], [valor]) VALUES (1, 3)
INSERT [dbo].[edades] ([id], [valor]) VALUES (2, 7)
INSERT [dbo].[edades] ([id], [valor]) VALUES (3, 12)
INSERT [dbo].[edades] ([id], [valor]) VALUES (4, 16)
INSERT [dbo].[edades] ([id], [valor]) VALUES (5, 18)
SET IDENTITY_INSERT [dbo].[edades] OFF
SET IDENTITY_INSERT [dbo].[fabricantes] ON 

INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (1, N'2k', N'2kSport')
INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (2, N'SQ', N'Square Enix')
INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (4, N'EA', N'EA Sports')
INSERT [dbo].[fabricantes] ([id], [codigo], [nombre]) VALUES (5, N'ACTI', N'Activision')
SET IDENTITY_INSERT [dbo].[fabricantes] OFF
INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 1)
INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 2)
INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 4)
INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 10)
INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (19, 11)
INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 2)
INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 3)
INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 4)
INSERT [dbo].[jue_consola] ([id_consola], [id_juego]) VALUES (24, 11)

SET IDENTITY_INSERT [dbo].[juegos] ON 
INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (1, N'Call of Duty', N'Juego del Call of Duty', N'./Imatges/call_of_duty.jpg', 12.3, 1, 5, 5)
INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (2, N'NBA2K14', N'Joc de la NBA', N'./Imatges/nba.jpg', 21.5, 0, 1, 1)
INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (3, N'FIFA 13', N'Joc de futbol.', N'./Imatges/fifa.jpg', 50.43, 1, 4, 1)
INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (4, N'Assasins', N'Joc de fantasia', N'./Imatges/assasins.jpg', 32.21, 0, 2, 4)
INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (5, N'Need for speed', N'Joc de cotxes', NULL, 32.76, 0, 4, 2)
INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (7, N'Destiny', N'Joc d''acció', N'.\Imatges\destiny.jpg', 32.21, 1, 5, 3)
INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (10, N'pep', N'pep', NULL, 21, 1, 4, 3)
INSERT [dbo].[juegos] ([id], [titulo], [descripcion], [image], [precio], [en_linea], [id_fabricante], [id_edad]) VALUES (11, N'isa', N'isa', NULL, 32, 0, 2, 5)
SET IDENTITY_INSERT [dbo].[juegos] OFF



GO

GO
PRINT N'Actualización completada.';


GO
