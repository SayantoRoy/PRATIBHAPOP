CREATE TABLE [ORG].[PlantDesignationGroupSalaryRule] (
    [Id]                 VARCHAR (10) NOT NULL,
    [PlantId]            VARCHAR (10) NOT NULL,
    [SalaryRuleMasterId] VARCHAR (30) NOT NULL,
    [DesignationGroupId] VARCHAR (10) NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_PlantDesignationGroupSalaryRule] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PlantDesignationGroupSalaryRule_DesignationGroup] FOREIGN KEY ([DesignationGroupId]) REFERENCES [HKP].[DesignationGroup] ([Id]),
    CONSTRAINT [FK_PlantDesignationGroupSalaryRule_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_PlantDesignationGroupSalaryRule_SalaryRuleMaster] FOREIGN KEY ([SalaryRuleMasterId]) REFERENCES [dbo].[SalaryRuleMaster] ([SystemID])
);

