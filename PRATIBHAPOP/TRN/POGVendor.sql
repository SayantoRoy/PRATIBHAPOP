CREATE TABLE [TRN].[POGVendor] (
    [Id]                   VARCHAR (10) NOT NULL,
    [PurchaseOrderGroupId] VARCHAR (10) NOT NULL,
    [PartyId]              VARCHAR (10) NOT NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedFromIP]        DATETIME     NULL,
    [UpdatedDate]          VARCHAR (15) NULL,
    [PartyPreference]      VARCHAR (10) NULL,
    CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Fk_PartyVen] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id])
);

