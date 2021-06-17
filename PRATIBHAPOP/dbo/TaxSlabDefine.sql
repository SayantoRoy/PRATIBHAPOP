CREATE TABLE [dbo].[TaxSlabDefine] (
    [SystemID]       VARCHAR (30)  NOT NULL,
    [TaxPolicyMstID] VARCHAR (30)  NULL,
    [SlabDefine]     VARCHAR (100) NULL,
    [TaxAbleIncome]  INT           NULL,
    [TaxRate]        INT           NULL,
    [AddedBy]        VARCHAR (100) NOT NULL,
    [DateAdded]      DATETIME      NOT NULL,
    [UpdatedBy]      VARCHAR (100) NULL,
    [DateUpdated]    DATETIME      NULL,
    [SequenceNo]     INT           NULL,
    CONSTRAINT [PK_TaxSlabDefine] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_TaxSlabDefine_TaxPolicyMaster] FOREIGN KEY ([TaxPolicyMstID]) REFERENCES [dbo].[TaxPolicyMaster] ([SystemID])
);

