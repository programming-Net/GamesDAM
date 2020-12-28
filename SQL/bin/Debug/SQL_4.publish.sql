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
USE [master];


GO

IF (DB_ID(N'$(DatabaseName)') IS NOT NULL) 
BEGIN
    ALTER DATABASE [$(DatabaseName)]
    SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [$(DatabaseName)];
END

GO
PRINT N'Creando $(DatabaseName)...'
GO
CREATE DATABASE [$(DatabaseName)]
    ON 
    PRIMARY(NAME = [$(DatabaseName)], FILENAME = N'$(DefaultDataPath)$(DefaultFilePrefix)_Primary.mdf')
    LOG ON (NAME = [$(DatabaseName)_log], FILENAME = N'$(DefaultLogPath)$(DefaultFilePrefix)_Primary.ldf') COLLATE SQL_Latin1_General_CP1_CI_AS
GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_CLOSE OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
USE [$(DatabaseName)];


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                NUMERIC_ROUNDABORT OFF,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL,
                RECOVERY FULL,
                CURSOR_CLOSE_ON_COMMIT OFF,
                AUTO_CREATE_STATISTICS ON,
                AUTO_SHRINK OFF,
                AUTO_UPDATE_STATISTICS ON,
                RECURSIVE_TRIGGERS OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ALLOW_SNAPSHOT_ISOLATION OFF;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET READ_COMMITTED_SNAPSHOT OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_UPDATE_STATISTICS_ASYNC OFF,
                PAGE_VERIFY NONE,
                DATE_CORRELATION_OPTIMIZATION OFF,
                DISABLE_BROKER,
                PARAMETERIZATION SIMPLE,
                SUPPLEMENTAL_LOGGING OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF IS_SRVROLEMEMBER(N'sysadmin') = 1
    BEGIN
        IF EXISTS (SELECT 1
                   FROM   [master].[dbo].[sysdatabases]
                   WHERE  [name] = N'$(DatabaseName)')
            BEGIN
                EXECUTE sp_executesql N'ALTER DATABASE [$(DatabaseName)]
    SET TRUSTWORTHY OFF,
        DB_CHAINING OFF 
    WITH ROLLBACK IMMEDIATE';
            END
    END
ELSE
    BEGIN
        PRINT N'No se puede modificar la configuración de la base de datos. Debe ser un administrador del sistema para poder aplicar esta configuración.';
    END


GO
IF IS_SRVROLEMEMBER(N'sysadmin') = 1
    BEGIN
        IF EXISTS (SELECT 1
                   FROM   [master].[dbo].[sysdatabases]
                   WHERE  [name] = N'$(DatabaseName)')
            BEGIN
                EXECUTE sp_executesql N'ALTER DATABASE [$(DatabaseName)]
    SET HONOR_BROKER_PRIORITY OFF 
    WITH ROLLBACK IMMEDIATE';
            END
    END
ELSE
    BEGIN
        PRINT N'No se puede modificar la configuración de la base de datos. Debe ser un administrador del sistema para poder aplicar esta configuración.';
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET FILESTREAM(NON_TRANSACTED_ACCESS = OFF),
                CONTAINMENT = NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF),
                MEMORY_OPTIMIZED_ELEVATE_TO_SNAPSHOT = OFF,
                DELAYED_DURABILITY = DISABLED 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE (QUERY_CAPTURE_MODE = ALL, DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_PLANS_PER_QUERY = 200, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 367), MAX_STORAGE_SIZE_MB = 100) 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE = OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET TEMPORAL_HISTORY_RETENTION ON 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF fulltextserviceproperty(N'IsFulltextInstalled') = 1
    EXECUTE sp_fulltext_database 'enable';


GO
PRINT N'Creando [dbo].[consolas]...';


GO
CREATE TABLE [dbo].[consolas] (
    [id]          INT          IDENTITY (1, 1) NOT NULL,
    [codigo]      VARCHAR (50) NOT NULL,
    [descripcion] VARCHAR (50) NULL,
    CONSTRAINT [PK_consolas] PRIMARY KEY CLUSTERED ([id] ASC) ON [PRIMARY],
    CONSTRAINT [IX_consolas] UNIQUE NONCLUSTERED ([codigo] ASC) ON [PRIMARY]
) ON [PRIMARY];


GO
PRINT N'Creando [dbo].[contenidos]...';


GO
CREATE TABLE [dbo].[contenidos] (
    [id]    INT          IDENTITY (1, 1) NOT NULL,
    [valor] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_contenidos] PRIMARY KEY CLUSTERED ([id] ASC) ON [PRIMARY],
    CONSTRAINT [IX_contenidos] UNIQUE NONCLUSTERED ([valor] ASC) ON [PRIMARY]
) ON [PRIMARY];


GO
PRINT N'Creando [dbo].[edades]...';


GO
CREATE TABLE [dbo].[edades] (
    [id]    INT IDENTITY (1, 1) NOT NULL,
    [valor] INT NOT NULL,
    CONSTRAINT [PK_edades] PRIMARY KEY CLUSTERED ([id] ASC) ON [PRIMARY],
    CONSTRAINT [IX_edades] UNIQUE NONCLUSTERED ([valor] ASC) ON [PRIMARY]
) ON [PRIMARY];


GO
PRINT N'Creando [dbo].[fabricantes]...';


GO
CREATE TABLE [dbo].[fabricantes] (
    [id]     INT          IDENTITY (1, 1) NOT NULL,
    [codigo] VARCHAR (50) NOT NULL,
    [nombre] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_fabricantes] PRIMARY KEY CLUSTERED ([id] ASC) ON [PRIMARY],
    CONSTRAINT [IX_fabricantes] UNIQUE NONCLUSTERED ([codigo] ASC) ON [PRIMARY]
) ON [PRIMARY];


GO
PRINT N'Creando [dbo].[generos]...';


GO
CREATE TABLE [dbo].[generos] (
    [id]          INT          IDENTITY (1, 1) NOT NULL,
    [descripcion] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_generos] PRIMARY KEY CLUSTERED ([id] ASC) ON [PRIMARY],
    CONSTRAINT [IX_generos] UNIQUE NONCLUSTERED ([descripcion] ASC) ON [PRIMARY]
) ON [PRIMARY];


GO
PRINT N'Creando [dbo].[jue_consola]...';


GO
CREATE TABLE [dbo].[jue_consola] (
    [id_consola] INT NOT NULL,
    [id_juego]   INT NOT NULL,
    CONSTRAINT [PK_jue_consola] PRIMARY KEY CLUSTERED ([id_consola] ASC, [id_juego] ASC) ON [PRIMARY]
) ON [PRIMARY];


GO
PRINT N'Creando [dbo].[jue_contenido]...';


GO
CREATE TABLE [dbo].[jue_contenido] (
    [id_contenido] INT NOT NULL,
    [id_juego]     INT NOT NULL,
    CONSTRAINT [PK_jue_contenido] PRIMARY KEY CLUSTERED ([id_contenido] ASC, [id_juego] ASC) ON [PRIMARY]
) ON [PRIMARY];


GO
PRINT N'Creando [dbo].[jue_genero]...';


GO
CREATE TABLE [dbo].[jue_genero] (
    [id_genero] INT NOT NULL,
    [id_juego]  INT NOT NULL,
    CONSTRAINT [PK_jue_genero] PRIMARY KEY CLUSTERED ([id_genero] ASC, [id_juego] ASC) ON [PRIMARY]
) ON [PRIMARY];


GO
PRINT N'Creando [dbo].[juegos]...';


GO
CREATE TABLE [dbo].[juegos] (
    [id]            INT           IDENTITY (1, 1) NOT NULL,
    [titulo]        VARCHAR (50)  NOT NULL,
    [descripcion]   VARCHAR (150) NULL,
    [image]         VARCHAR (150) NULL,
    [precio]        FLOAT (53)    NULL,
    [en_linea]      BIT           NULL,
    [id_fabricante] INT           NOT NULL,
    [id_edad]       INT           NOT NULL,
    CONSTRAINT [PK_juegos] PRIMARY KEY CLUSTERED ([id] ASC) ON [PRIMARY],
    CONSTRAINT [IX_juegos] UNIQUE NONCLUSTERED ([titulo] ASC) ON [PRIMARY]
) ON [PRIMARY];


GO
PRINT N'Creando [dbo].[FK_jue_consola_consolas]...';


GO
ALTER TABLE [dbo].[jue_consola]
    ADD CONSTRAINT [FK_jue_consola_consolas] FOREIGN KEY ([id_consola]) REFERENCES [dbo].[consolas] ([id]);


GO
PRINT N'Creando [dbo].[FK_jue_consola_juegos]...';


GO
ALTER TABLE [dbo].[jue_consola]
    ADD CONSTRAINT [FK_jue_consola_juegos] FOREIGN KEY ([id_juego]) REFERENCES [dbo].[juegos] ([id]);


GO
PRINT N'Creando [dbo].[FK_jue_contenido_contenidos]...';


GO
ALTER TABLE [dbo].[jue_contenido]
    ADD CONSTRAINT [FK_jue_contenido_contenidos] FOREIGN KEY ([id_contenido]) REFERENCES [dbo].[contenidos] ([id]);


GO
PRINT N'Creando [dbo].[FK_jue_contenido_juegos]...';


GO
ALTER TABLE [dbo].[jue_contenido]
    ADD CONSTRAINT [FK_jue_contenido_juegos] FOREIGN KEY ([id_juego]) REFERENCES [dbo].[juegos] ([id]);


GO
PRINT N'Creando [dbo].[FK_jue_genero_generos]...';


GO
ALTER TABLE [dbo].[jue_genero]
    ADD CONSTRAINT [FK_jue_genero_generos] FOREIGN KEY ([id_genero]) REFERENCES [dbo].[generos] ([id]);


GO
PRINT N'Creando [dbo].[FK_jue_genero_juegos]...';


GO
ALTER TABLE [dbo].[jue_genero]
    ADD CONSTRAINT [FK_jue_genero_juegos] FOREIGN KEY ([id_juego]) REFERENCES [dbo].[juegos] ([id]);


GO
PRINT N'Creando [dbo].[FK_juegos_edades]...';


GO
ALTER TABLE [dbo].[juegos]
    ADD CONSTRAINT [FK_juegos_edades] FOREIGN KEY ([id_edad]) REFERENCES [dbo].[edades] ([id]);


GO
PRINT N'Creando [dbo].[FK_juegos_fabricantes]...';


GO
ALTER TABLE [dbo].[juegos]
    ADD CONSTRAINT [FK_juegos_fabricantes] FOREIGN KEY ([id_fabricante]) REFERENCES [dbo].[fabricantes] ([id]);


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
DECLARE @VarDecimalSupported AS BIT;

SELECT @VarDecimalSupported = 0;

IF ((ServerProperty(N'EngineEdition') = 3)
    AND (((@@microsoftversion / power(2, 24) = 9)
          AND (@@microsoftversion & 0xffff >= 3024))
         OR ((@@microsoftversion / power(2, 24) = 10)
             AND (@@microsoftversion & 0xffff >= 1600))))
    SELECT @VarDecimalSupported = 1;

IF (@VarDecimalSupported > 0)
    BEGIN
        EXECUTE sp_db_vardecimal_storage_format N'$(DatabaseName)', 'ON';
    END


GO
PRINT N'Actualización completada.';


GO
