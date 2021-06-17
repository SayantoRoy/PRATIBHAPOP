CREATE TABLE [dbo].[MachineBudget] (
    [Id]                   VARCHAR (30)    NOT NULL,
    [ArticleId]            VARCHAR (10)    NULL,
    [PlantId]              VARCHAR (10)    NOT NULL,
    [EntityId]             VARCHAR (10)    NULL,
    [ProductionMachineQty] DECIMAL (18, 2) NULL,
    [SampleMachineQty]     DECIMAL (18, 2) NULL,
    [TrainingMachineQty]   DECIMAL (18, 2) NULL,
    [RentMachineQty]       DECIMAL (18, 2) NULL,
    [OtherMachineQty]      DECIMAL (18, 2) NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    CONSTRAINT [PK_MachineBudget_1] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MachineBudget_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_MachineBudget_MaterialMasterArticle] FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_MachineBudget_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

