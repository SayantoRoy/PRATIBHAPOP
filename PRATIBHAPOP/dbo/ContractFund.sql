CREATE TABLE [dbo].[ContractFund] (
    [Id]                  VARCHAR (10)    NOT NULL,
    [ContractId]          VARCHAR (10)    NULL,
    [FundUtilization]     VARCHAR (20)    NOT NULL,
    [FundUtilizationText] VARCHAR (50)    NULL,
    [Percentage]          DECIMAL (18, 2) NULL,
    [CurrencyId]          VARCHAR (10)    NULL,
    [AddedBy]             VARCHAR (30)    NOT NULL,
    [AddedDate]           DATETIME        NOT NULL,
    [AddedFromIP]         VARCHAR (15)    NOT NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    [Commission]          DECIMAL (18, 2) NULL,
    [PurchaseMargin]      DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_ContractFund] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ContractFund_Contract] FOREIGN KEY ([ContractId]) REFERENCES [dbo].[Contract] ([Id]),
    CONSTRAINT [FK_ContractFund_LCFundUtilization] FOREIGN KEY ([FundUtilization]) REFERENCES [dbo].[LCFundUtilization] ([FundUtilization])
);

