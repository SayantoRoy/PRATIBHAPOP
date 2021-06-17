CREATE TABLE [dbo].[EmployeeWiseBankCashAmount] (
    [Id]          INT             IDENTITY (1, 1) NOT NULL,
    [EmpSystemId] VARCHAR (30)    NULL,
    [YearNo]      INT             NULL,
    [MonthNo]     INT             NULL,
    [BankAmount]  DECIMAL (18, 2) NULL,
    [CashAmount]  DECIMAL (18, 2) NULL,
    [PlantId]     VARCHAR (10)    NULL,
    [AddedBy]     VARCHAR (100)   NOT NULL,
    [AddedDate]   DATETIME        NOT NULL,
    [UpdatedBy]   VARCHAR (100)   NULL,
    [UpdatedDate] DATETIME        NULL,
    CONSTRAINT [PK_EmployeeWiseBankCashAmount] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeWiseBankCashAmount_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeWiseBankCashAmount_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

