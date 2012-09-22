CREATE TABLE [dbo].[ac_MenuItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[NavigateUrl] [nvarchar](1024) NULL,
	[MenuId] [int] NOT NULL,
	[Parent] [int] NOT NULL,
	[Visible] [bit] NOT NULL,
	[Ordering] [int] NOT NULL,
	[EntryId] [int] NULL
) ON [PRIMARY]
