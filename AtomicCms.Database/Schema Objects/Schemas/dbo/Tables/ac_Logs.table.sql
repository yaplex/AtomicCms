CREATE TABLE [dbo].[ac_Logs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [nvarchar](255) NOT NULL,
	[Level] [nvarchar](50) NOT NULL,
	[Logger] [nvarchar](255) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Exception] [nvarchar](max) NOT NULL
) ON [PRIMARY]

