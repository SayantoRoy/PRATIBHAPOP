﻿CREATE TABLE [dbo].[JobWorkTransformationContractChild3] (
    [Id]                                         VARCHAR (50)    NOT NULL,
    [JobWorkTransformationContractChildMasterId] VARCHAR (50)    NOT NULL,
    [MaterialMasterId]                           VARCHAR (30)    NOT NULL,
    [MaterialSpecification]                      VARCHAR (50)    NOT NULL,
    [InputMaterialUOMId]                         VARCHAR (10)    NOT NULL,
    [NetConsumptionOutputUnit]                   DECIMAL (18, 2) NOT NULL,
    [Rejection]                                  DECIMAL (18, 2) NOT NULL,
    [ValueLoss]                                  DECIMAL (18, 2) NOT NULL,
    [GrossConsumption]                           DECIMAL (18, 2) NOT NULL,
    [ResponsiblePersonId]                        VARCHAR (30)    NOT NULL,
    [Remarks]                                    VARCHAR (250)   NULL,
    [AddedBy]                                    VARCHAR (30)    NOT NULL,
    [AddedDate]                                  DATETIME        NOT NULL,
    [AddedFromIP]                                VARCHAR (15)    NOT NULL,
    [UpdatedBy]                                  VARCHAR (30)    NULL,
    [UpdatedDate]                                DATETIME        NULL,
    [UpdatedFromIP]                              VARCHAR (15)    NULL,
    CONSTRAINT [PK_JobWorkTransformationContractChild3] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkTransformationContractChild3_InputMaterialUOM] FOREIGN KEY ([InputMaterialUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationContractChild3_JobWorkTransformationContractChildMaster] FOREIGN KEY ([JobWorkTransformationContractChildMasterId]) REFERENCES [dbo].[JobWorkTransformationContractChild] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationContractChild3_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationContractChild3_ResponsiblePerson] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);
