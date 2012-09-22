 
ALTER TABLE [dbo].[ac_PageTags]  ADD  CONSTRAINT [FK_ac_PageTags_ac_Pages] FOREIGN KEY([PageId])
REFERENCES [dbo].[ac_Pages] ([Id])
 