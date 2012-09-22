ALTER TABLE [dbo].[ac_Pages] ADD  CONSTRAINT [DF_Entry_Created]  DEFAULT (getdate()) FOR [Created]
GO

ALTER TABLE [dbo].[ac_Pages] ADD  CONSTRAINT [DF_Entry_LastUpdate]  DEFAULT (getdate()) FOR [LastModified]
GO

ALTER TABLE [dbo].[ac_Pages] ADD  CONSTRAINT [DF_sc_Content_Autor]  DEFAULT ((0)) FOR [Author]
GO

ALTER TABLE [dbo].[ac_Pages] ADD  CONSTRAINT [DF_ac_Pages_PageStatus]  DEFAULT ((1)) FOR [PageStatus]
GO
