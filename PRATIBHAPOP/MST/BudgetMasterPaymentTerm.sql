CREATE TABLE [MST].[BudgetMasterPaymentTerm] (
    [Id]               VARCHAR (20) NOT NULL,
    [BudgetMasterId]   VARCHAR (20) NOT NULL,
    [UpToMonth]        INT          NOT NULL,
    [PaymentAfterDays] INT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_BudgetMasterPaymentTerm] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BudgetMasterPaymentTerm_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id])
);

