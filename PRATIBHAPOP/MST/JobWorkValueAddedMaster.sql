﻿CREATE TABLE [MST].[JobWorkValueAddedMaster] (
    [Id]                     VARCHAR (50)    NOT NULL,
    [JobWorkActivityId]      VARCHAR (50)    NULL,
    [JobWorkActivityChildId] VARCHAR (50)    NULL,
    [StdRejection]           DECIMAL (18, 2) NULL,
    [StdValueLoss]           DECIMAL (18, 2) NULL,
    [RateApplicable]         VARCHAR (50)    NULL,
    [CurrencyId]             VARCHAR (10)    NULL,
    [MinRate]                DECIMAL (18, 2) NULL,
    [MaxRate]                DECIMAL (18, 2) NULL,
    [CycleTime]              INT             NULL,
    [ResponsiblePersonId]    VARCHAR (30)    NULL,
    [Remarks]                VARCHAR (250)   NULL,
    [AddedBy]                VARCHAR (30)    NOT NULL,
    [AddedDate]              DATETIME        NOT NULL,
    [AddedFromIP]            VARCHAR (15)    NOT NULL,
    [UpdatedBy]              VARCHAR (30)    NULL,
    [UpdatedDate]            DATETIME        NULL,
    [UpdatedFromIP]          VARCHAR (15)    NULL,
    CONSTRAINT [PK_JobWorkActivityChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkValueAddedMaster_CurrencyId] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedMaster_JobWorkActivityChildId] FOREIGN KEY ([JobWorkActivityChildId]) REFERENCES [HKP].[JobWorkItem] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedMaster_JobWorkActivityId] FOREIGN KEY ([JobWorkActivityId]) REFERENCES [HKP].[JobWorkActivity] ([Id])
);

