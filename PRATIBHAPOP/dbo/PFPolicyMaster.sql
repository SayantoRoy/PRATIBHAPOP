CREATE TABLE [dbo].[PFPolicyMaster] (
    [ID]                    VARCHAR (20)  NOT NULL,
    [PFPolicyName]          VARCHAR (100) NULL,
    [PFPolicyDescription]   VARCHAR (150) NULL,
    [Eligibility]           VARCHAR (10)  NULL,
    [EligibilityBaseOn]     VARCHAR (10)  NULL,
    [EligibilityTimeLenght] INT           CONSTRAINT [DF_PFPolicyMaster_EligibilityTimeLenght] DEFAULT ((0)) NOT NULL,
    [MaturityBaseOn]        VARCHAR (10)  NULL,
    [MaturityTimeLenght]    INT           NOT NULL,
    [GroupID]               VARCHAR (10)  NULL,
    [PlantID]               VARCHAR (10)  NULL,
    [AddedBy]               VARCHAR (30)  NOT NULL,
    [AddedDate]             DATETIME      NOT NULL,
    [AddedFromIP]           VARCHAR (15)  NOT NULL,
    [UpdatedBy]             VARCHAR (30)  NULL,
    [UpdatedDate]           DATETIME      NULL,
    [UpdatedFromIP]         VARCHAR (15)  NULL,
    [IsAllEmpApplocable]    BIT           CONSTRAINT [DF_PFPolicyMaster_IsAllEmpApplocable] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_PFPolicyMaster] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_PFPolicyMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PFPolicyMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

