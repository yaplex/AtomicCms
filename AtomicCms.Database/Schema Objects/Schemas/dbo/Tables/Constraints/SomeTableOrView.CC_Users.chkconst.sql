
ALTER TABLE [dbo].[ac_Users] ADD  CONSTRAINT [DF_Users_Registered]  DEFAULT (getdate()) FOR [Registered]
GO

ALTER TABLE [dbo].[ac_Users] ADD  CONSTRAINT [DF_Users_Status]  DEFAULT ((0)) FOR [Status]
GO

ALTER TABLE [dbo].[ac_Users] ADD  CONSTRAINT [DF_User_Role]  DEFAULT ((0)) FOR [Role]
GO

