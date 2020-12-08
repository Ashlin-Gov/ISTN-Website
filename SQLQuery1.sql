USE [group6]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[getCartIdentity]
		@id = 1

SELECT	@return_value as 'Return Value'

GO
