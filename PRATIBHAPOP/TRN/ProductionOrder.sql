﻿CREATE TABLE [TRN].[ProductionOrder] (
    [Id]                 VARCHAR (30)    NOT NULL,
    [PlantId]            VARCHAR (10)    NULL,
    [EntityId]           VARCHAR (10)    NULL,
    [ProductionStatusId] VARCHAR (10)    NULL,
    [RequiredTimeUnit]   VARCHAR (50)    NULL,
    [Remarks]            VARCHAR (250)   NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    [planningStatus]     VARCHAR (10)    DEFAULT ('TOSTART') NULL,
    [Qty]                DECIMAL (18, 4) NULL,
    [Lsd]                DATE            NULL,
    [CommitmentDate]     DATE            NULL,
    [PicFileName]        VARCHAR (100)   NULL,
    [PlannedQty]         DECIMAL (18, 4) NULL,
    [ClosingDate]        DATETIME        NULL,
    CONSTRAINT [PK_ProductionBatch] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductionOrder_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_ProductionOrder_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_ProductionOrder_ProductionStatus] FOREIGN KEY ([ProductionStatusId]) REFERENCES [HKP].[ProductionStatus] ([Id])
);
