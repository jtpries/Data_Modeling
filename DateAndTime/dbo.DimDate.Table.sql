USE [DateAndTime]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 11/16/2018 3:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[DateKey] [int] NOT NULL,
	[SeqDayNumber] [int] NULL,
	[Date] [date] NULL,
	[DayNumber] [int] NULL,
	[DayName] [varchar](10) NULL,
	[DayAbbrv] [varchar](3) NULL,
	[CalendarDayOfWeek] [int] NULL,
	[CalendarDayOfMonth] [int] NULL,
	[CalendarDayOfQuarter] [int] NULL,
	[CalendarDayOfYear] [int] NULL,
	[CalendarWeekOfYear] [int] NULL,
	[CalendarWeekKey] [int] NULL,
	[CalendarMonthKey] [int] NULL,
	[CalendarMonthNumber] [int] NULL,
	[CalendarMonthName] [varchar](20) NULL,
	[CalendarMonthNameShort] [varchar](12) NULL,
	[CalendarQuarterKey] [int] NULL,
	[CalendarQuarterNumber] [int] NULL,
	[CalendarQuarterName] [varchar](8) NULL,
	[CalendarYear] [int] NULL,
	[SeqCalendarWeekNumber] [int] NULL,
	[SeqCalendarMonthNumber] [int] NULL,
	[SeqCalendarQuarterNumber] [int] NULL,
	[CalendarMonthNumDays] [int] NULL,
	[FiscalDayOfWeek] [int] NULL,
	[FiscalDayOfMonth] [int] NULL,
	[FiscalDayOfQuarter] [int] NULL,
	[FiscalDayOfYear] [int] NULL,
	[FiscalWeekOfMonth] [int] NULL,
	[FiscalWeekOfYear] [int] NULL,
	[FiscalWeekKey] [int] NULL,
	[FiscalMonthKey] [int] NULL,
	[FiscalMonthNumber] [int] NULL,
	[FiscalMonthName] [varchar](20) NULL,
	[FiscalMonthNameShort] [varchar](12) NULL,
	[FiscalQuarterKey] [int] NULL,
	[FiscalQuarterNumber] [int] NULL,
	[FiscalQuarterName] [varchar](12) NULL,
	[FiscalYear] [int] NULL,
	[FiscalYearName] [varchar](12) NULL,
	[SeqFiscalWeekNumber] [int] NULL,
	[SeqFiscalMonthNumber] [int] NULL,
	[SeqFiscalQuarterNumber] [int] NULL,
	[FiscalMonthNumDays] [int] NULL,
	[IsBizDay] [bit] NULL,
	[IsUSHoliday] [bit] NULL,
	[USHolidayName] [varchar](100) NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
