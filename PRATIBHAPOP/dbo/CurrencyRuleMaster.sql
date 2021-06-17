CREATE TABLE [dbo].[CurrencyRuleMaster] (
    [SystemID]            VARCHAR (30)  NOT NULL,
    [CurrencyRuleName]    VARCHAR (50)  NULL,
    [GroupID]             VARCHAR (10)  NULL,
    [PlantID]             VARCHAR (10)  NULL,
    [CurrencyDescription] VARCHAR (150) NULL,
    [NoOfUsed]            INT           NULL,
    [AddedBy]             VARCHAR (100) NOT NULL,
    [DateAdded]           DATETIME      NOT NULL,
    [UpdatedBy]           VARCHAR (100) NULL,
    [DateUpdated]         DATETIME      NULL,
    CONSTRAINT [PK_CurrencyRuleMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_CurrencyRuleMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CurrencyRuleMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

