﻿CREATE TABLE [HKP].[ProcessSetDetail] (
    [Id]                    VARCHAR (10)    NOT NULL,
    [ProcessSetId]          VARCHAR (10)    NOT NULL,
    [ProcessId]             VARCHAR (10)    NOT NULL,
    [Sequence]              DECIMAL (18, 2) NOT NULL,
    [IsBaseProcess]         BIT             NOT NULL,
    [Days]                  INT             NOT NULL,
    [Symbol]                VARCHAR (1)     NULL,
    [ProductionCycleTime]   INT             NOT NULL,
    [JobWorkApplicable]     BIT             NOT NULL,
    [JobWorkType]           VARCHAR (50)    NULL,
    [EntityIdWithinCompany] VARCHAR (10)    NULL,
    [EntityIdWithinGroup]   VARCHAR (10)    NULL,
    [PartyId]               VARCHAR (10)    NULL,
    [Archive]               BIT             NOT NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    CONSTRAINT [PK_ProcessSetDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProcessSetDetail_EntityWithinCompany] FOREIGN KEY ([EntityIdWithinCompany]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_ProcessSetDetail_EntityWithinGroup] FOREIGN KEY ([EntityIdWithinGroup]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_ProcessSetDetail_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_ProcessSetDetail_ProcessSet] FOREIGN KEY ([ProcessSetId]) REFERENCES [HKP].[ProcessSet] ([Id]),
    CONSTRAINT [FK_ProcessSetDetail_Vendor] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id])
);

