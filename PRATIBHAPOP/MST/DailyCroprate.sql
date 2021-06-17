CREATE TABLE [MST].[DailyCroprate] (
    [Id]            VARCHAR (20)    NOT NULL,
    [Date]          DATETIME        NOT NULL,
    [LocationId]    VARCHAR (20)    NOT NULL,
    [CropId]        VARCHAR (20)    NOT NULL,
    [CropTypeId]    VARCHAR (20)    NOT NULL,
    [TargetRate]    DECIMAL (18, 2) NOT NULL,
    [MaximumRate]   DECIMAL (18, 2) NOT NULL,
    [ApproveById]   VARCHAR (30)    NULL,
    [Remarks]       VARCHAR (250)   NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_DailyCroprate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DailyCroprate_ApproveBy] FOREIGN KEY ([ApproveById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_DailyCroprate_Crop] FOREIGN KEY ([CropId]) REFERENCES [MST].[CropMaster] ([Id]),
    CONSTRAINT [FK_DailyCroprate_CropType] FOREIGN KEY ([CropTypeId]) REFERENCES [HKP].[CropType] ([Id]),
    CONSTRAINT [FK_DailyCroprate_Location] FOREIGN KEY ([LocationId]) REFERENCES [HKP].[CropRateLocation] ([Id])
);

