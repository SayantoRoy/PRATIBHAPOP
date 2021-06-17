CREATE TABLE [dbo].[AttdnBonusPmtPolicyMaster] (
    [ID]                        VARCHAR (20)  NOT NULL,
    [AttenBnsPolicyName]        VARCHAR (100) NULL,
    [AttenBnsPolicyDescription] VARCHAR (150) NULL,
    [GroupID]                   VARCHAR (10)  NULL,
    [PlantID]                   VARCHAR (10)  NULL,
    [AddedBy]                   VARCHAR (30)  NOT NULL,
    [AddedDate]                 DATETIME      NOT NULL,
    [AddedFromIP]               VARCHAR (15)  NOT NULL,
    [UpdatedBy]                 VARCHAR (30)  NULL,
    [UpdatedDate]               DATETIME      NULL,
    [UpdatedFromIP]             VARCHAR (15)  NULL,
    CONSTRAINT [PK_AttdnBonusPmtPolicyMaster] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_AttdnBonusPmtPolicyMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_AttdnBonusPmtPolicyMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

