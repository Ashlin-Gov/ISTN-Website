USE [group6]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[getPrePurchase]
		@prodName = N'Female Adidas Sport Shirt'

SELECT	@return_value as 'Return Value'

GO
