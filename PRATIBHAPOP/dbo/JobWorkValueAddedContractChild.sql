﻿CREATE TABLE [dbo].[JobWorkValueAddedContractChild] (
    [Id]                                VARCHAR (50)    NOT NULL,
    [JobWorkValueAddedContractMasterId] VARCHAR (50)    NOT NULL,
    [JobWorkItemMasterId]               VARCHAR (50)    NOT NULL,
    [MaterialSpecification]             VARCHAR (50)    NOT NULL,
    [MaterialReference]                 VARCHAR (50)    NULL,
    [OutputMaterialUOMId]               VARCHAR (10)    NOT NULL,
    [Quantity]                          DECIMAL (18, 2) NOT NULL,
    [ArticleCodeId]                     VARCHAR (10)    NULL,
    [OrderSpecific]                     VARCHAR (20)    NOT NULL,
    [RequiredCapacity]                  VARCHAR (50)    NULL,
    [RateApplyId]                       VARCHAR (50)    NOT NULL,
    [CurrencyId]                        VARCHAR (10)    NULL,
    [RatePerUnit]                       DECIMAL (18, 2) NOT NULL,
    [Rejection]                         DECIMAL (18, 2) NOT NULL,
    [ValueLoss]                         DECIMAL (18, 2) NOT NULL,
    [ResponsiblePersonId]               VARCHAR (30)    NOT NULL,
    [Remarks]                           VARCHAR (250)   NULL,
    [FileName]                          VARCHAR (100)   NULL,
    [AddedBy]                           VARCHAR (30)    NOT NULL,
    [AddedDate]                         DATETIME        NOT NULL,
    [AddedFromIP]                       VARCHAR (15)    NOT NULL,
    [UpdatedBy]                         VARCHAR (30)    NULL,
    [UpdatedDate]                       DATETIME        NULL,
    [UpdatedFromIP]                     VARCHAR (15)    NULL,
    [MaterialLocationId]                VARCHAR (50)    NOT NULL,
    [MaterialType]                      VARCHAR (50)    NOT NULL,
    [FinalOutputCategory]               VARCHAR (50)    NOT NULL,
    CONSTRAINT [PK_JobWorkValueAddedContractChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkValueAddedContractChild_ArticleCodeId] FOREIGN KEY ([ArticleCodeId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedContractChild_CurrencyId] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedContractChild_JobWorkItemMaster] FOREIGN KEY ([JobWorkItemMasterId]) REFERENCES [HKP].[JobWorkItem] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedContractChild_JobWorkValueAddedContractMaster] FOREIGN KEY ([JobWorkValueAddedContractMasterId]) REFERENCES [dbo].[JobWorkValueAddedContract] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedContractChild_MaterialLocationId] FOREIGN KEY ([MaterialLocationId]) REFERENCES [HKP].[JobWorkLocation] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedContractChild_OutputMaterialUOM] FOREIGN KEY ([OutputMaterialUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedContractChild_RateApplyId] FOREIGN KEY ([RateApplyId]) REFERENCES [MST].[JobWorkValueAddedMaster] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedContractChild_ResponsiblePerson] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);
