CREATE TABLE [MST].[JobWorkTransformationMasterMaterialInput] (
    [Id]                            VARCHAR (50)    NOT NULL,
    [JobWorkTransformationMasterId] VARCHAR (50)    NULL,
    [JobWorkItemId]                 VARCHAR (50)    NULL,
    [ItemSpecification]             VARCHAR (250)   NULL,
    [NetConsumption]                DECIMAL (18, 2) NULL,
    [Rejection]                     DECIMAL (18, 2) NULL,
    [ValueLoss]                     DECIMAL (18, 2) NULL,
    [GrossConsumption]              DECIMAL (18, 2) NULL,
    [ResponsiblePersonId]           VARCHAR (30)    NULL,
    [Remarks]                       VARCHAR (250)   NULL,
    [AddedBy]                       VARCHAR (30)    NOT NULL,
    [AddedDate]                     DATETIME        NOT NULL,
    [AddedFromIP]                   VARCHAR (15)    NOT NULL,
    [UpdatedBy]                     VARCHAR (30)    NULL,
    [UpdatedDate]                   DATETIME        NULL,
    [UpdatedFromIP]                 VARCHAR (15)    NULL,
    CONSTRAINT [PK_JobWorkTransformationMasterMaterialInput] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkTransformationMasterMaterialInput_JobWorkTransformationMasterId] FOREIGN KEY ([JobWorkTransformationMasterId]) REFERENCES [MST].[JobWorkTransformationMaster] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationMasterMaterialInput_ResponsiblePersonId] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

