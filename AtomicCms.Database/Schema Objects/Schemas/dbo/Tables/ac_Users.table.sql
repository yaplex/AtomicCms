CREATE TABLE [dbo].[ac_Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](250) NOT NULL,
	[Hash] [nvarchar](250) NOT NULL,
	[DisplayName] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](250) NULL,
	[Registered] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[Role] [int] NOT NULL
) ON [PRIMARY]
