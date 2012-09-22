CREATE TABLE [dbo].[ac_Pages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Alias] [nvarchar](1024) NOT NULL,
	[MetaDescription] [nvarchar](1024) NULL,
	[MetaKeywords] [nvarchar](1024) NULL,
	[SeoTitle] [nvarchar](150) NULL,
	[PageContent] [nvarchar](max) NULL,
	[Created] [datetime] NOT NULL,
	[LastModified] [datetime] NOT NULL,
	[Author] [int] NOT NULL,
	[PageTitle] [nvarchar](250) NOT NULL,
	[PageStatus] [int] NOT NULL
) ON [PRIMARY]
