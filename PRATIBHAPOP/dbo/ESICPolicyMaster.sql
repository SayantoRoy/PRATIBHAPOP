CREATE TABLE [dbo].[ESICPolicyMaster] (
    [ID]                    VARCHAR (20)  NOT NULL,
    [ESICPolicyName]        VARCHAR (100) NULL,
    [ESICPolicyDescription] VARCHAR (150) NULL,
    [GroupID]               VARCHAR (10)  NULL,
    [PlantID]               VARCHAR (10)  NULL,
    [AddedBy]               VARCHAR (30)  NOT NULL,
    [AddedDate]             DATETIME      NOT NULL,
    [AddedFromIP]           VARCHAR (15)  NOT NULL,
    [UpdatedBy]             VARCHAR (30)  NULL,
    [UpdatedDate]           DATETIME      NULL,
    [UpdatedFromIP]         VARCHAR (15)  NULL,
    CONSTRAINT [PK_ESICPolicyMaster] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ESICPolicyMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ESICPolicyMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

