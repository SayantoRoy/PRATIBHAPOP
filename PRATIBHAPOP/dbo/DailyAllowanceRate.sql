CREATE TABLE [dbo].[DailyAllowanceRate] (
    [Id]                 VARCHAR (30)    NOT NULL,
    [PlantID]            VARCHAR (10)    NOT NULL,
    [EmployeeCategoryId] VARCHAR (10)    NULL,
    [DailyAllowanceId]   VARCHAR (30)    NOT NULL,
    [Rate]               DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [Active]             BIT             NOT NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    [FormulaDescription] VARCHAR (300)   NULL,
    [FormulaDesID]       VARCHAR (300)   NULL,
    [IsFixed]            BIT             DEFAULT ((0)) NULL,
    [DesignationId]      VARCHAR (30)    NOT NULL,
    CONSTRAINT [PK_DailyAllowanceRate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DailyAllowanceRate_AllowanceDaily] FOREIGN KEY ([DailyAllowanceId]) REFERENCES [HKP].[AllowanceDaily] ([Id]),
    CONSTRAINT [FK_DailyAllowanceRate_EmployeeCategory] FOREIGN KEY ([EmployeeCategoryId]) REFERENCES [HKP].[EmployeeCategory] ([Id]),
    CONSTRAINT [FK_DailyAllowanceRate_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

