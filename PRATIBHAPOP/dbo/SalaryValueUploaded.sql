CREATE TABLE [dbo].[SalaryValueUploaded] (
    [SystemID]     VARCHAR (30)    NOT NULL,
    [EmpSystemID]  VARCHAR (30)    NOT NULL,
    [SalaryHeadID] VARCHAR (30)    NOT NULL,
    [EntryDate]    DATETIME        NOT NULL,
    [EntryAmount]  NUMERIC (18, 4) NOT NULL,
    [PeriodType]   VARCHAR (30)    NULL,
    [IsContinued]  BIT             CONSTRAINT [DF_SalaryValueUploaded_IsContinuousForEveryMonthUntilChange] DEFAULT ((0)) NOT NULL,
    [AddedBy]      VARCHAR (100)   NOT NULL,
    [DateAdded]    DATETIME        NOT NULL,
    [UpdatedBy]    VARCHAR (100)   NULL,
    [DateUpdated]  DATETIME        NULL,
    CONSTRAINT [PK_SalaryValueUploaded] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_SalaryValueUploaded_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_SalaryValueUploaded_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

