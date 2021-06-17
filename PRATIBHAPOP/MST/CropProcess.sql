CREATE TABLE [MST].[CropProcess] (
    [Id]               VARCHAR (20)    NOT NULL,
    [CropMasterId]     VARCHAR (20)    NOT NULL,
    [Sequence]         DECIMAL (18, 2) NOT NULL,
    [FarmingProcessId] VARCHAR (20)    NOT NULL,
    [StandardDays]     DECIMAL (18, 2) NULL,
    [StandardDuration] VARCHAR (20)    NULL,
    [Remarks]          VARCHAR (250)   NULL,
    [AddedBy]          VARCHAR (30)    NOT NULL,
    [AddedDate]        DATETIME        NOT NULL,
    [AddedFromIP]      VARCHAR (15)    NOT NULL,
    [UpdatedBy]        VARCHAR (30)    NULL,
    [UpdatedDate]      DATETIME        NULL,
    [UpdatedFromIP]    VARCHAR (15)    NULL,
    CONSTRAINT [PK_CropProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CropProcess_CropMaster] FOREIGN KEY ([CropMasterId]) REFERENCES [MST].[CropMaster] ([Id]),
    CONSTRAINT [FK_CropProcess_FarmingProcess] FOREIGN KEY ([FarmingProcessId]) REFERENCES [HKP].[FarmingProcess] ([Id])
);

