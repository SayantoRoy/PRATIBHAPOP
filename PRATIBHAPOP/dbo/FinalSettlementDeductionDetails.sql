CREATE TABLE [dbo].[FinalSettlementDeductionDetails] (
    [Id]                             VARCHAR (30)    NOT NULL,
    [FinalSettlementDeductionHeadId] VARCHAR (30)    NOT NULL,
    [EmployeeFinalSettlementId]      VARCHAR (30)    NOT NULL,
    [Amount]                         DECIMAL (18, 2) NOT NULL,
    [AddedBy]                        VARCHAR (30)    NOT NULL,
    [AddedDate]                      DATETIME        NOT NULL,
    [AddedFromIP]                    VARCHAR (15)    NOT NULL,
    [UpdatedBy]                      VARCHAR (30)    NULL,
    [UpdatedDate]                    DATETIME        NULL,
    [UpdatedFromIP]                  VARCHAR (15)    NULL,
    CONSTRAINT [PK_FinalSettlementDeductionDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FinalSettlementDeductionDetails_EmployeeFinalSettlement] FOREIGN KEY ([EmployeeFinalSettlementId]) REFERENCES [dbo].[EmployeeFinalSettlement] ([Id]),
    CONSTRAINT [FK_FinalSettlementDeductionDetails_FinalSettlementDeductionHead] FOREIGN KEY ([FinalSettlementDeductionHeadId]) REFERENCES [dbo].[FinalSettlementDeductionHead] ([Id])
);

