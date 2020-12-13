USE [group6]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[GetLoginID]
		@email = N'nashlinmoodly@gmail.com',
		@pass = N'tfblade17'

SELECT	@return_value as 'Return Value'

GO
