ALTER TABLE [dbo].[ac_MenuItems]  ADD  CONSTRAINT [FK_sc_MenuItem_sc_MenuType] FOREIGN KEY([MenuId])
REFERENCES [dbo].[ac_MenuTypes] ([Id])
 

