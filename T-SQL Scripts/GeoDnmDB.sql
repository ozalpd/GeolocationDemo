/****** Object:  Table [dbo].[Locations]    Script Date: 8.5.2015 20:21:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[StreetName] [nvarchar](50) NULL,
	[Notes] [nvarchar](250) NULL,
	[Geolocation] [geography] NOT NULL,
	[Accuracy] [bigint] Not Null,
	[TimeStamp] [bigint] Not Null,
	[ExtraData] [nvarchar](255) NULL
  CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED ([Id] ASC)
  WITH (PAD_INDEX  = OFF,
    STATISTICS_NORECOMPUTE  = OFF,
    IGNORE_DUP_KEY = OFF,
    ALLOW_ROW_LOCKS  = ON,
    ALLOW_PAGE_LOCKS  = ON)
  ON [PRIMARY]) ON [PRIMARY]
Go

Create Nonclustered Index [idx_Locations_TimeStamp] On [dbo].[Locations]([TimeStamp] Desc)
Go


