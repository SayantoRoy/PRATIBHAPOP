CREATE TABLE [dbo].[DailyAllowanceTransaction] (
    [Id]               VARCHAR (30)    NOT NULL,
    [PlantId]          VARCHAR (10)    NOT NULL,
    [WorkDate]         DATETIME        NULL,
    [EmpSystemId]      VARCHAR (30)    NOT NULL,
    [AllowanceDailyId] VARCHAR (30)    NOT NULL,
    [Quantity]         DECIMAL (18, 2) NOT NULL,
    [AddedBy]          VARCHAR (30)    NOT NULL,
    [AddedDate]        DATETIME        NOT NULL,
    [AddedFromIP]      VARCHAR (15)    NOT NULL,
    [UpdatedBy]        VARCHAR (30)    NULL,
    [UpdatedDate]      DATETIME        NULL,
    [UpdatedFromIP]    VARCHAR (15)    NULL,
    [SalaryHeadId]     VARCHAR (30)    NULL,
    [Rate]             DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [Amount]           DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_DailyAllowanceTransaction] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DailyAllowanceTransaction_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_DailyAllowanceTransaction_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

