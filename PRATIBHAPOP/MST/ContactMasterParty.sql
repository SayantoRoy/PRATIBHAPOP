CREATE TABLE [MST].[ContactMasterParty] (
    [Id]              VARCHAR (20) NOT NULL,
    [ContactMasterId] VARCHAR (20) NOT NULL,
    [PartyGroupId]    VARCHAR (10) NULL,
    [PartyId]         VARCHAR (10) NULL,
    [Active]          BIT          NOT NULL,
    [Archive]         BIT          NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_ContactMasterParty] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ContactMasterParty_ContactMaster] FOREIGN KEY ([ContactMasterId]) REFERENCES [MST].[ContactMaster] ([Id]),
    CONSTRAINT [FK_ContactMasterParty_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_ContactMasterParty_PartyGroup] FOREIGN KEY ([PartyGroupId]) REFERENCES [HKP].[PartyGroup] ([Id])
);

