CREATE TABLE [MST].[CropProcessMonth] (
    [Id]                    VARCHAR (20) NOT NULL,
    [CropMasterId]          VARCHAR (20) NOT NULL,
    [FarmingProcessId]      VARCHAR (20) NULL,
    [FarmingProcessMonthNo] VARCHAR (20) NULL,
    [AddedBy]               VARCHAR (30) NOT NULL,
    [AddedDate]             DATETIME     NOT NULL,
    [AddedFromIP]           VARCHAR (15) NOT NULL,
    [UpdatedBy]             VARCHAR (30) NULL,
    [UpdatedDate]           DATETIME     NULL,
    [UpdatedFromIP]         VARCHAR (15) NULL,
    CONSTRAINT [PK_CropProcessMonth] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CropProcessMonth_CropMaster] FOREIGN KEY ([CropMasterId]) REFERENCES [MST].[CropMaster] ([Id]),
    CONSTRAINT [FK_CropProcessMonth_FarmingProcess] FOREIGN KEY ([FarmingProcessId]) REFERENCES [HKP].[FarmingProcess] ([Id])
);

