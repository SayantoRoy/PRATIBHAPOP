CREATE TABLE [dbo].[TaxRebateSlabDefine] (
    [SystemID]                     VARCHAR (30)    NOT NULL,
    [TaxPolicyMstID]               VARCHAR (30)    NOT NULL,
    [TaxAbleIncomeLowerForRebate]  NUMERIC (18, 2) NULL,
    [TaxAbleIncomeUpperForRebate]  NUMERIC (18, 2) NULL,
    [SlabDefine]                   VARCHAR (100)   NULL,
    [InvesmentAmtForRebate]        NUMERIC (18, 2) NULL,
    [InvestAmtTaxPercentageRebate] NUMERIC (18, 2) NULL,
    CONSTRAINT [PK_TaxRebateSlabDefine] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_TaxRebateSlabDefine_TaxPolicyMaster] FOREIGN KEY ([TaxPolicyMstID]) REFERENCES [dbo].[TaxPolicyMaster] ([SystemID])
);

