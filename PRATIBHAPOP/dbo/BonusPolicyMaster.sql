CREATE TABLE [dbo].[BonusPolicyMaster] (
    [SystemID]         VARCHAR (30)  NOT NULL,
    [PolicyName]       VARCHAR (50)  NULL,
    [BonusDescription] VARCHAR (150) NULL,
    [DefaultPolicy]    BIT           NULL,
    [GroupID]          VARCHAR (10)  NULL,
    [PlantID]          VARCHAR (10)  NULL,
    [AddedBy]          VARCHAR (100) NOT NULL,
    [DateAdded]        DATETIME      NOT NULL,
    [UpdatedBy]        VARCHAR (100) NULL,
    [DateUpdated]      DATETIME      NULL,
    CONSTRAINT [PK_BonusPolicyMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_BonusPolicyMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_BonusPolicyMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

