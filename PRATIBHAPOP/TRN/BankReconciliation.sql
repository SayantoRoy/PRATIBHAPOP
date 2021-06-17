CREATE TABLE [TRN].[BankReconciliation] (
    [Id]              VARCHAR (50)    NOT NULL,
    [CompanyGroupId]  VARCHAR (10)    NOT NULL,
    [CompanyId]       VARCHAR (10)    NOT NULL,
    [BankMasterId]    VARCHAR (10)    NOT NULL,
    [OpeningBlance]   DECIMAL (18, 4) NOT NULL,
    [ClosingBalance]  DECIMAL (18, 4) NOT NULL,
    [BankStatementNo] VARCHAR (50)    NOT NULL,
    [FromDate]        DATETIME        NOT NULL,
    [ToDate]          DATETIME        NOT NULL,
    [AddedBy]         VARCHAR (30)    NOT NULL,
    [AddedDate]       DATETIME        NOT NULL,
    [AddedFromIP]     VARCHAR (15)    NOT NULL,
    [UpdatedBy]       VARCHAR (30)    NULL,
    [UpdatedDate]     DATETIME        NULL,
    [UpdatedFromIP]   VARCHAR (15)    NULL,
    CONSTRAINT [PK_BankReconciliation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BankReconciliation_BankMaster] FOREIGN KEY ([BankMasterId]) REFERENCES [MST].[BankMaster] ([Id]),
    CONSTRAINT [FK_BankReconciliation_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_BankReconciliation_CompanyGroupCostCenter] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroupCostCenter] ([Id])
);

