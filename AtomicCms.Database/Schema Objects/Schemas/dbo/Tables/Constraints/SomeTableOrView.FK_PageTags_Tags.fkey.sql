 
ALTER TABLE [dbo].[ac_PageTags]   ADD  CONSTRAINT [FK_ac_PageTags_ac_Tags] FOREIGN KEY([TagId])
REFERENCES [dbo].[ac_Tags] ([TagId])
 