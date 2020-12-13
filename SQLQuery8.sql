USE [group6]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[FilterProducts]
		@Brand = 4,
		@Colour = NULL,
		@Category = 1,
		@Size = NULL,
		@Gender = NULL

SELECT	@return_value as 'Return Value'

GO
