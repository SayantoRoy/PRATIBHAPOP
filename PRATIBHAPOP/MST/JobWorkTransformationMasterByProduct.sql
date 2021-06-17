CREATE TABLE [MST].[JobWorkTransformationMasterByProduct] (
    [Id]                            VARCHAR (50)    NOT NULL,
    [JobWorkTransformationMasterId] VARCHAR (50)    NULL,
    [JobWorkItemId]                 VARCHAR (50)    NULL,
    [ItemSpecification]             VARCHAR (250)   NULL,
    [CurrencyId]                    VARCHAR (10)    NULL,
    [StandardRate]                  DECIMAL (18, 2) NULL,
    [ResponsiblePersonId]           VARCHAR (30)    NULL,
    [Remarks]                       VARCHAR (250)   NULL,
    [AddedBy]                       VARCHAR (30)    NOT NULL,
    [AddedDate]                     DATETIME        NOT NULL,
    [AddedFromIP]                   VARCHAR (15)    NOT NULL,
    [UpdatedBy]                     VARCHAR (30)    NULL,
    [UpdatedDate]                   DATETIME        NULL,
    [UpdatedFromIP]                 VARCHAR (15)    NULL,
    [PercentageOfInput]             DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_JobWorkTransformationMasterByProduct] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkTransformationMasterByProduct_CurrencyId] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationMasterByProduct_JobWorkItemId] FOREIGN KEY ([JobWorkItemId]) REFERENCES [HKP].[JobWorkItem] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationMasterByProduct_JobWorkTransformationMasterId] FOREIGN KEY ([JobWorkTransformationMasterId]) REFERENCES [MST].[JobWorkTransformationMaster] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationMasterByProduct_ResponsiblePersonId] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

