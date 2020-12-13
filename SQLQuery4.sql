USE [group6]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[GetOrderNo]
		@memID = N'4531875153252546'

SELECT	@return_value as 'Return Value'

GO
