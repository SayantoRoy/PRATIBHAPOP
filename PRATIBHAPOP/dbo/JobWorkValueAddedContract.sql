CREATE TABLE [dbo].[JobWorkValueAddedContract] (
    [Id]                    VARCHAR (50)  NOT NULL,
    [Date]                  DATETIME      NOT NULL,
    [Time]                  DATETIME      NOT NULL,
    [EntityId]              VARCHAR (10)  NOT NULL,
    [VendorPartyId]         VARCHAR (10)  NOT NULL,
    [ProcessStartDate]      DATETIME      NOT NULL,
    [ProcessEndDate]        DATETIME      NOT NULL,
    [ContractClosingDate]   DATETIME      NOT NULL,
    [UserContractReference] VARCHAR (50)  NULL,
    [Remarks]               VARCHAR (250) NULL,
    [AddedBy]               VARCHAR (30)  NOT NULL,
    [AddedDate]             DATETIME      NOT NULL,
    [AddedFromIP]           VARCHAR (15)  NOT NULL,
    [UpdatedBy]             VARCHAR (30)  NULL,
    [UpdatedDate]           DATETIME      NULL,
    [UpdatedFromIP]         VARCHAR (15)  NULL,
    CONSTRAINT [PK_JobWorkValueAddedContract] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkValueAddedContract_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedContract_VendorParty] FOREIGN KEY ([VendorPartyId]) REFERENCES [HKP].[Party] ([Id])
);

