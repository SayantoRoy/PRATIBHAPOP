CREATE TABLE [dbo].[ContractTermsAndConditions] (
    [Id]                   VARCHAR (30) NOT NULL,
    [ContractId]           VARCHAR (10) NULL,
    [TermsAndConditionsId] VARCHAR (20) NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    CONSTRAINT [PK_ContractTermsAndConditions] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ContractTermsAndConditions_Contract] FOREIGN KEY ([ContractId]) REFERENCES [dbo].[Contract] ([Id]),
    CONSTRAINT [FK_ContractTermsAndConditions_TermsAndConditions] FOREIGN KEY ([TermsAndConditionsId]) REFERENCES [HKP].[TermsAndConditions] ([Id])
);

