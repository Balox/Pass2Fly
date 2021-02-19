USE [bdareopuerto]
GO

/****** Object:  Table [dbo].[vuelo]    Script Date: 13/02/2021 11:21:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[vuelo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idavion] [int] NOT NULL,
	[asientosdisponibles] [int] NOT NULL,
	[partida] [nvarchar](50) NOT NULL,
	[destino] [nvarchar](50) NOT NULL,
	[fechavuelo] [datetime] NOT NULL,
	[estado] [nchar](1) NOT NULL,
 CONSTRAINT [PK_vuelo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [bdareopuerto]
GO

/****** Object:  Table [dbo].[pasajeprueba]    Script Date: 13/02/2021 11:21:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[pasajeprueba](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idpasaje] [int] NOT NULL,
	[tipoprueba] [nvarchar](20) NOT NULL,
	[resultado] [nchar](1) NOT NULL,
	[laboratorio] [nvarchar](50) NOT NULL,
	[estado] [nchar](1) NOT NULL,
 CONSTRAINT [PK_pasajeprueba] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [bdareopuerto]
GO

/****** Object:  Table [dbo].[avion]    Script Date: 13/02/2021 11:21:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[avion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [nchar](4) NOT NULL,
	[modelo] [nvarchar](50) NOT NULL,
	[totalasientos] [int] NOT NULL,
	[estado] [nchar](1) NOT NULL,
 CONSTRAINT [PK_avion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [bdareopuerto]
GO

/****** Object:  Table [dbo].[aerolinea]    Script Date: 13/02/2021 11:21:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[aerolinea](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[pais] [nvarchar](50) NOT NULL,
	[estado] [nchar](1) NOT NULL,
 CONSTRAINT [PK_aerolinea] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [bdareopuerto]
GO

/****** Object:  Table [dbo].[pasaje]    Script Date: 13/02/2021 11:21:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[pasaje](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[documento] [nvarchar](10) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[apellido] [nvarchar](50) NOT NULL,
	[idvuelo] [int] NOT NULL,
	[numeroasiento] [int] NOT NULL,
	[numeromaletas] [int] NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_pasaje] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


