CREATE TABLE [dbo].[BonusPolicyMonthlyRetainMaster] (
    [ID]                         VARCHAR (20)  NOT NULL,
    [BnsPlcMthRetainName]        VARCHAR (100) NULL,
    [BnsPlcMthRetainDescription] VARCHAR (150) NULL,
    [IsAllEmpApplocable]         BIT           CONSTRAINT [DF_BonusPolicyMonthlyRetainMaster_IsAllEmpApplocable] DEFAULT ((0)) NULL,
    [GroupID]                    VARCHAR (10)  NULL,
    [PlantID]                    VARCHAR (10)  NULL,
    [AddedBy]                    VARCHAR (30)  NOT NULL,
    [AddedDate]                  DATETIME      NOT NULL,
    [AddedFromIP]                VARCHAR (15)  NOT NULL,
    [UpdatedBy]                  VARCHAR (30)  NULL,
    [UpdatedDate]                DATETIME      NULL,
    [UpdatedFromIP]              VARCHAR (15)  NULL,
    [IsIndividual]               BIT           CONSTRAINT [DF_BonusPolicyMonthlyRetainMaster_IsIndividual] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_BonusPolicyMonthlyRetainMaster] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

