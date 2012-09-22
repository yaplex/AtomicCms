ALTER TABLE [dbo].[ac_MenuItems] ADD  CONSTRAINT [DF_ac_MenuItems_NavigateUrl]  DEFAULT ('') FOR [NavigateUrl]
GO

ALTER TABLE [dbo].[ac_MenuItems] ADD  CONSTRAINT [DF__Menu__MenuId__108B795B]  DEFAULT ((0)) FOR [MenuId]
GO

ALTER TABLE [dbo].[ac_MenuItems] ADD  CONSTRAINT [DF_MenuItem_Parent]  DEFAULT ((0)) FOR [Parent]
GO

ALTER TABLE [dbo].[ac_MenuItems] ADD  CONSTRAINT [DF_MenuItem_Visible]  DEFAULT ((1)) FOR [Visible]
GO

ALTER TABLE [dbo].[ac_MenuItems] ADD  CONSTRAINT [DF_MenuItem_Order]  DEFAULT ((0)) FOR [Ordering]
GO
