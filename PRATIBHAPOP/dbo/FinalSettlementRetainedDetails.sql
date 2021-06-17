CREATE TABLE [dbo].[FinalSettlementRetainedDetails] (
    [Id]                        VARCHAR (30)    NOT NULL,
    [SalaryHeadId]              VARCHAR (30)    NOT NULL,
    [EmployeeFinalSettlementId] VARCHAR (30)    NOT NULL,
    [Amount]                    DECIMAL (18, 2) NOT NULL,
    [AddedBy]                   VARCHAR (30)    NOT NULL,
    [AddedDate]                 DATETIME        NOT NULL,
    [AddedFromIP]               VARCHAR (15)    NOT NULL,
    [UpdatedBy]                 VARCHAR (30)    NULL,
    [UpdatedDate]               DATETIME        NULL,
    [UpdatedFromIP]             VARCHAR (15)    NULL,
    CONSTRAINT [PK_FinalSettlementRetainedDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FinalSettlementRetainedDetails_FinalSettlementRetainedDetails] FOREIGN KEY ([EmployeeFinalSettlementId]) REFERENCES [dbo].[EmployeeFinalSettlement] ([Id]),
    CONSTRAINT [FK_FinalSettlementRetainedDetails_SalaryHead] FOREIGN KEY ([SalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

