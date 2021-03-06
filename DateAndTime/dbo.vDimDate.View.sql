USE [DateAndTime]
GO
/****** Object:  View [dbo].[vDimDate]    Script Date: 11/16/2018 3:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[vDimDate] AS

	SELECT
		DateKey 
		,SeqDayNumber 
		,[Date]
		,DayNumber 
		,[DayName] 
		,DayAbbrv 

		,CalendarDayOfWeek
		,CalendarDayOfMonth 
		,CASE WHEN DateKey = -1 THEN 'Unknown' ELSE 'Day ' + CAST(CalendarDayOfMonth AS VARCHAR(3)) END AS CalendarDayOfMonthName
		,CalendarDayOfQuarter 
		,CalendarDayOfYear 
		,CASE WHEN DateKey = -1 THEN 'Unknown' ELSE 'Day ' + CAST(CalendarDayOfYear AS VARCHAR(3)) END AS CalendarDayOfYearName

		,CalendarWeekOfYear
		,CalendarWeekKey

		,CalendarMonthKey 
		,CalendarMonthNumber 
		,CalendarMonthName 
		,CalendarMonthNameShort 

		,CalendarQuarterKey 
		,CalendarQuarterNumber 
		,CalendarQuarterName 
		,CalendarYear 

		,SeqCalendarWeekNumber 
		,SeqCalendarMonthNumber 
		,SeqCalendarQuarterNumber 

		,FiscalDayOfWeek 
		,FiscalDayOfMonth 
		,CASE WHEN DateKey = -1 THEN 'Unknown' ELSE 'Day ' + CAST(FiscalDayOfMonth AS NVARCHAR(3)) END AS FiscalDayOfMonthName
		,FiscalDayOfQuarter 
		,FiscalDayOfYear 
		,CASE WHEN DateKey = -1 THEN 'Unknown' ELSE 'Day ' + CAST(FiscalDayOfYear AS NVARCHAR(3)) END AS FiscalDayOfYearName

		,FiscalWeekOfMonth 
		,CASE WHEN DateKey = -1 THEN 'Unknown' ELSE 'Week ' + CAST(FiscalWeekOfMonth AS NVARCHAR(3)) END AS FiscalWeekOfMonthName
		,FiscalWeekOfYear 
		,CASE WHEN DateKey = -1 THEN 'Unknown' ELSE 'Week ' + CAST(FiscalWeekOfYear AS NVARCHAR(3)) END AS FiscalWeekOfYearName 
		,FiscalWeekKey 

		,FiscalMonthKey 
		,FiscalMonthNumber
		,FiscalMonthName 
		,FiscalMonthNameShort 
		,FiscalQuarterKey 
		,FiscalQuarterNumber
		,FiscalQuarterName 
		,FiscalYear 
		,FiscalYearName 

		,SeqFiscalWeekNumber 
		,SeqFiscalMonthNumber 
		,SeqFiscalQuarterNumber 
		,FiscalMonthNumDays 
		,CalendarMonthNumDays
		,IsUSHoliday 
		,USHolidayName 
		,IsBizDay 
	FROM dbo.DimDate

		
GO
