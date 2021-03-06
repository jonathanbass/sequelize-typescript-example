USE [cinema]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 20/04/2018 13:46:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[birthday] [datetime2](7) NOT NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK__Actor__3213E83FB2D59880] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 20/04/2018 13:46:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[name] [varchar](100) NOT NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 20/04/2018 13:46:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[year] [int] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK__Movie__3213E83FE2B1F19F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieActor]    Script Date: 20/04/2018 13:46:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieActor](
	[movieId] [int] NULL,
	[actorId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieGenre]    Script Date: 20/04/2018 13:46:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieGenre](
	[movieId] [int] NULL,
	[genre] [varchar](100) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieActor]  WITH CHECK ADD  CONSTRAINT [FK_MovieActor_Actor] FOREIGN KEY([actorId])
REFERENCES [dbo].[Actor] ([id])
GO
ALTER TABLE [dbo].[MovieActor] CHECK CONSTRAINT [FK_MovieActor_Actor]
GO
ALTER TABLE [dbo].[MovieActor]  WITH CHECK ADD  CONSTRAINT [FK_MovieActor_Movie] FOREIGN KEY([movieId])
REFERENCES [dbo].[Movie] ([id])
GO
ALTER TABLE [dbo].[MovieActor] CHECK CONSTRAINT [FK_MovieActor_Movie]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenre_Genre] FOREIGN KEY([genre])
REFERENCES [dbo].[Genre] ([name])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [FK_MovieGenre_Genre]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenre_Movie] FOREIGN KEY([movieId])
REFERENCES [dbo].[Movie] ([id])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [FK_MovieGenre_Movie]
GO
