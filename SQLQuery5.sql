USE [group6]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[getProdIdDisplay]
		@Colour = N'Orange',
		@Size = N'3',
		@ProdName = N'Male Nike Air Zoom Running Shoes'

SELECT	@return_value as 'Return Value'

GO
