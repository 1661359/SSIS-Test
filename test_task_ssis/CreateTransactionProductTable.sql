CREATE TABLE [dbo].[TransactionProduct](
	[TransactionID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_TransactionProduct] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[TransactionProduct]  WITH CHECK ADD  CONSTRAINT [FK_TransactionProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO

ALTER TABLE [dbo].[TransactionProduct] CHECK CONSTRAINT [FK_TransactionProduct_Product]
GO

ALTER TABLE [dbo].[TransactionProduct]  WITH CHECK ADD  CONSTRAINT [FK_TransactionProduct_Transaction] FOREIGN KEY([TransactionID])
REFERENCES [dbo].[Transaction] ([TransactionID])
GO

ALTER TABLE [dbo].[TransactionProduct] CHECK CONSTRAINT [FK_TransactionProduct_Transaction]
GO