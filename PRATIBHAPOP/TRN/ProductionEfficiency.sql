CREATE TABLE [TRN].[ProductionEfficiency] (
    [ID]                      VARCHAR (30)    NOT NULL,
    [PlantID]                 VARCHAR (10)    NULL,
    [ProcessID]               VARCHAR (10)    NULL,
    [Quantity]                DECIMAL (18, 4) NULL,
    [SMV]                     DECIMAL (18, 4) NULL,
    [Manpower]                DECIMAL (18, 4) NULL,
    [TotalHour]               DECIMAL (18, 4) NULL,
    [AddedBy]                 VARCHAR (100)   NULL,
    [AddedDate]               DATETIME        NULL,
    [UpdatedBy]               VARCHAR (100)   NULL,
    [UpdatedDate]             DATETIME        NULL,
    [MaterialMasterArticleId] VARCHAR (10)    NULL,
    [MaterialMasterId]        VARCHAR (30)    NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([MaterialMasterArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    FOREIGN KEY ([ProcessID]) REFERENCES [HKP].[Process] ([Id])
);

