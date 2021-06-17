CREATE TABLE [HKP].[PartyAccountGroupGL] (
    [Id]                  VARCHAR (10) NOT NULL,
    [COAId]               VARCHAR (10) NOT NULL,
    [PartyAccountGroupId] VARCHAR (10) NOT NULL,
    [GLGeneralInfoId]     VARCHAR (10) NOT NULL,
    [BudgetMasterId]      VARCHAR (20) NULL,
    [ActivityId]          VARCHAR (10) NULL,
    [PartyGLType]         VARCHAR (20) NOT NULL,
    [Active]              BIT          CONSTRAINT [DF_PartyAccountGroupGL_Active] DEFAULT ((0)) NOT NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    CONSTRAINT [PK_PartyAccountGroupGL] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PartyAccountGroupGL_ActivityId] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_PartyAccountGroupGL_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_PartyAccountGroupGL_COA] FOREIGN KEY ([COAId]) REFERENCES [HKP].[COA] ([Id]),
    CONSTRAINT [FK_PartyAccountGroupGL_GLGeneralInfo] FOREIGN KEY ([GLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_PartyAccountGroupGL_PartyAccountGroup] FOREIGN KEY ([PartyAccountGroupId]) REFERENCES [HKP].[PartyAccountGroup] ([Id])
);

