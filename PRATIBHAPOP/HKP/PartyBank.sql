CREATE TABLE [HKP].[PartyBank] (
    [Id]             VARCHAR (15)  NOT NULL,
    [CompanyPartyId] VARCHAR (13)  NULL,
    [Remarks]        VARCHAR (250) NULL,
    [Active]         BIT           NOT NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    [Bank]           VARCHAR (100) NULL,
    [BankBranch]     VARCHAR (100) NULL,
    [BankAccountNo]  VARCHAR (100) NULL,
    CONSTRAINT [PK_PartyBank] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PartyBank_CompanyParty] FOREIGN KEY ([CompanyPartyId]) REFERENCES [HKP].[CompanyParty] ([Id])
);

