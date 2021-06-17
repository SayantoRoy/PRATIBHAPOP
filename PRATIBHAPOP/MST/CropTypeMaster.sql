CREATE TABLE [MST].[CropTypeMaster] (
    [Id]             VARCHAR (20)    NOT NULL,
    [CropMasterId]   VARCHAR (20)    NOT NULL,
    [CropTypeId]     VARCHAR (20)    NOT NULL,
    [LandCategoryId] VARCHAR (20)    NOT NULL,
    [MinimumOutput]  DECIMAL (18, 2) NULL,
    [MaximumOutput]  DECIMAL (18, 2) NULL,
    [AverageOutput]  DECIMAL (18, 2) NULL,
    [MinimumRate]    VARCHAR (20)    NULL,
    [MaximumRate]    VARCHAR (20)    NULL,
    [AverageRate]    VARCHAR (20)    NULL,
    [Remarks]        VARCHAR (250)   NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_CropTypeMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CropTypeMaster_CropMaster] FOREIGN KEY ([CropMasterId]) REFERENCES [MST].[CropMaster] ([Id]),
    CONSTRAINT [FK_CropTypeMaster_CropTypeId] FOREIGN KEY ([CropTypeId]) REFERENCES [HKP].[CropType] ([Id]),
    CONSTRAINT [FK_CropTypeMaster_LandCategory] FOREIGN KEY ([LandCategoryId]) REFERENCES [HKP].[LandCategory] ([Id])
);

