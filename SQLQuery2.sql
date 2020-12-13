USE [group6]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[GetOrderNo]
		@memID = N'3716 4120 8035 7806'

SELECT	@return_value as 'Return Value'

GO
