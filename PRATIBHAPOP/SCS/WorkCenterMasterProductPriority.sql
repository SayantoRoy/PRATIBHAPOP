CREATE TABLE [SCS].[WorkCenterMasterProductPriority] (
    [Id]                 VARCHAR (30) NOT NULL,
    [WorkCenterMasterId] VARCHAR (30) NOT NULL,
    [Priority]           INT          NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    [ProductMasterId]    VARCHAR (10) NULL,
    CONSTRAINT [PK_WorkCenterMasterProductPriority] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WorkCenterMasterProductPriority_ProductMaster] FOREIGN KEY ([ProductMasterId]) REFERENCES [MST].[ProductMaster] ([Id]),
    CONSTRAINT [FK_WorkCenterMasterProductPriority_WorkCenterMaster] FOREIGN KEY ([WorkCenterMasterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id])
);

