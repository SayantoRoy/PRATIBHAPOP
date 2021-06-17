CREATE TABLE [dbo].[EmployeeAdditionDeductionPeriod] (
    [Id]            VARCHAR (30) NOT NULL,
    [MasterId]      VARCHAR (30) NOT NULL,
    [Period]        VARCHAR (30) NOT NULL,
    [WeekDay]       VARCHAR (20) NULL,
    [Month]         VARCHAR (20) NULL,
    [MonthDay]      DECIMAL (3)  NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_EmployeeAdditionDeductionPeriod] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeAdditionDeductionPeriod_MasterId] FOREIGN KEY ([MasterId]) REFERENCES [dbo].[EmployeeAdditionDeductionHeader] ([Id])
);

