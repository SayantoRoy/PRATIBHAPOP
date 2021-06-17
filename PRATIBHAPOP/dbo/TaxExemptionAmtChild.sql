CREATE TABLE [dbo].[TaxExemptionAmtChild] (
    [SystemID]     VARCHAR (30)    NOT NULL,
    [MstSystemID]  VARCHAR (30)    NOT NULL,
    [SalaryHeadID] VARCHAR (30)    NULL,
    [ExemptionAmt] NUMERIC (18, 4) NULL,
    [AddedBy]      VARCHAR (100)   NOT NULL,
    [DateAdded]    DATETIME        NOT NULL,
    [UpdatedBy]    VARCHAR (100)   NULL,
    [DateUpdated]  DATETIME        NULL,
    CONSTRAINT [PK_TaxExemptionAmtChold] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_TaxExemptionAmtChold_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_TaxExemptionAmtChold_TaxExemptionAmtMaster] FOREIGN KEY ([MstSystemID]) REFERENCES [dbo].[TaxExemptionAmtMaster] ([SystemID])
);

