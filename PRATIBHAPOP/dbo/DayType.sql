CREATE TABLE [dbo].[DayType] (
    [DayType]         VARCHAR (5)  NOT NULL,
    [Description]     VARCHAR (50) NULL,
    [Category]        VARCHAR (30) NULL,
    [OriginalDayType] VARCHAR (30) DEFAULT ('NW') NOT NULL,
    [ColorCode]       VARCHAR (10) NULL,
    CONSTRAINT [PK_DayType] PRIMARY KEY CLUSTERED ([DayType] ASC)
);

