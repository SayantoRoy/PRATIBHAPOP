CREATE TABLE [HKP].[CompanyPartyGL] (
    [Id]              VARCHAR (15)  NOT NULL,
    [PartyId]         VARCHAR (10)  NOT NULL,
    [CompanyPartyId]  VARCHAR (13)  NOT NULL,
    [GLGeneralInfoId] VARCHAR (10)  NOT NULL,
    [BudgetMasterId]  VARCHAR (20)  NULL,
    [ActivityId]      VARCHAR (10)  NULL,
    [PartyGLType]     VARCHAR (20)  NOT NULL,
    [Remarks]         VARCHAR (250) NULL,
    [Active]          BIT           NOT NULL,
    [AddedBy]         VARCHAR (30)  NOT NULL,
    [AddedDate]       DATETIME      NOT NULL,
    [AddedFromIP]     VARCHAR (15)  NOT NULL,
    [UpdatedBy]       VARCHAR (30)  NULL,
    [UpdatedDate]     DATETIME      NULL,
    [UpdatedFromIP]   VARCHAR (15)  NULL,
    CONSTRAINT [PK_CompanyPartyGL] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyPartyGL_ActivityId] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_CompanyPartyGL_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_CompanyPartyGL_CompanyParty] FOREIGN KEY ([CompanyPartyId]) REFERENCES [HKP].[CompanyParty] ([Id]),
    CONSTRAINT [FK_CompanyPartyGL_GLGeneralInfo] FOREIGN KEY ([GLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_CompanyPartyGL_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id])
);

