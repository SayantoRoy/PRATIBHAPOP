CREATE TABLE [dbo].[JobWorkTransformationContractChild4] (
    [Id]                                          VARCHAR (50)    NOT NULL,
    [JobWorkTransformationContractChild3MasterId] VARCHAR (50)    NOT NULL,
    [MaterialMasterId]                            VARCHAR (30)    NOT NULL,
    [MaterialSpecification]                       VARCHAR (50)    NOT NULL,
    [CurrencyId]                                  VARCHAR (10)    NULL,
    [StandardRatePerUnit]                         DECIMAL (18, 2) NOT NULL,
    [ResponsiblePersonId]                         VARCHAR (30)    NOT NULL,
    [Remarks]                                     VARCHAR (250)   NULL,
    [AddedBy]                                     VARCHAR (30)    NOT NULL,
    [AddedDate]                                   DATETIME        NOT NULL,
    [AddedFromIP]                                 VARCHAR (15)    NOT NULL,
    [UpdatedBy]                                   VARCHAR (30)    NULL,
    [UpdatedDate]                                 DATETIME        NULL,
    [UpdatedFromIP]                               VARCHAR (15)    NULL,
    [PercentageOfInput]                           DECIMAL (18, 2) NOT NULL,
    CONSTRAINT [PK_JobWorkTransformationContractChild4] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkTransformationContractChild4_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationContractChild4_JobWorkTransformationContractChild3Master] FOREIGN KEY ([JobWorkTransformationContractChild3MasterId]) REFERENCES [dbo].[JobWorkTransformationContractChild3] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationContractChild4_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationContractChild4_ResponsiblePerson] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

