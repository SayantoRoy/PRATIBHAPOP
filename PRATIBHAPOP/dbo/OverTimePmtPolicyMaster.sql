CREATE TABLE [dbo].[OverTimePmtPolicyMaster] (
    [ID]                        VARCHAR (20)  NOT NULL,
    [OverTimePolicyName]        VARCHAR (100) NULL,
    [OverTimePolicyDescription] VARCHAR (150) NULL,
    [IsDisbusted]               BIT           NOT NULL,
    [GroupID]                   VARCHAR (10)  NULL,
    [PlantID]                   VARCHAR (10)  NULL,
    [AddedBy]                   VARCHAR (30)  NOT NULL,
    [AddedDate]                 DATETIME      NOT NULL,
    [AddedFromIP]               VARCHAR (15)  NOT NULL,
    [UpdatedBy]                 VARCHAR (30)  NULL,
    [UpdatedDate]               DATETIME      NULL,
    [UpdatedFromIP]             VARCHAR (15)  NULL,
    [IsDefault]                 BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_OverTimePmtPolicyMaster] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_OverTimePmtPolicyMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_OverTimePmtPolicyMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

