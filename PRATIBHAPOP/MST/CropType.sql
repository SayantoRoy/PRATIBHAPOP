CREATE TABLE [MST].[CropType] (
    [Id]             VARCHAR (20)  NOT NULL,
    [CropMasterId]   VARCHAR (20)  NOT NULL,
    [CropTypeId]     VARCHAR (20)  NOT NULL,
    [LandCategoryId] VARCHAR (20)  NOT NULL,
    [MinimumOutput]  VARCHAR (20)  NULL,
    [MaximumOutput]  VARCHAR (20)  NULL,
    [AverageOutput]  VARCHAR (20)  NULL,
    [MinimumRate]    VARCHAR (20)  NULL,
    [MaximumRate]    VARCHAR (20)  NULL,
    [AverageRate]    VARCHAR (20)  NULL,
    [Remarks]        VARCHAR (250) NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_CropType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CropType_CropMaster] FOREIGN KEY ([CropMasterId]) REFERENCES [MST].[CropMaster] ([Id]),
    CONSTRAINT [FK_CropType_CropTypeId] FOREIGN KEY ([CropTypeId]) REFERENCES [HKP].[CropType] ([Id]),
    CONSTRAINT [FK_CropType_LandCategory] FOREIGN KEY ([LandCategoryId]) REFERENCES [HKP].[LandCategory] ([Id])
);

