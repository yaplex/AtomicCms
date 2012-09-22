ALTER TABLE [dbo].[ac_Pages]   ADD  CONSTRAINT [FK_sc_Page_sc_User] FOREIGN KEY([Author])
REFERENCES [dbo].[ac_Users] ([Id])
