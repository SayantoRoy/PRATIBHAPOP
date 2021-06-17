CREATE TABLE [dbo].[HolidayPayDayDetails] (
    [Id]                    VARCHAR (50) NOT NULL,
    [SalaryHeadId]          VARCHAR (30) NOT NULL,
    [HolidayPayDayMasterId] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([HolidayPayDayMasterId]) REFERENCES [dbo].[HolidayPayDayMaster] ([Id]),
    FOREIGN KEY ([SalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

