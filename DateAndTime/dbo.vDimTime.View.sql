USE [ITData]
GO
/****** Object:  View [dbo].[vDimTime]    Script Date: 11/16/2018 3:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[vDimTime] AS

	SELECT 
		TimeKey
		,[Time]
		,Hour12h
		,Hour24h
		,[Minute]
		,[Second]
		,AmPm
		,StandardTime
		,Hour24h + ':' + [Minute] AS [Hour24TimeMinOnly]
		,Hour12h + ':' + [Minute] + ' ' + AmPm AS StandardTimeMinOnly
		,CAST([Hour24h] AS INT) * 60 + CAST([Minute] AS INT) AS SeqMinuteNumber
	 FROM dbo.DimTime
		
GO
