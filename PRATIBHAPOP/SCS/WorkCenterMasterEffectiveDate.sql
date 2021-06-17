CREATE TABLE [SCS].[WorkCenterMasterEffectiveDate] (
    [Id]                 VARCHAR (30) NOT NULL,
    [WorkCenterMasterId] VARCHAR (30) NOT NULL,
    [StartDate]          DATE         NOT NULL,
    [EndDate]            DATE         NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_WorkCenterMasterEffectiveDate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WorkCenterMasterEffectiveDate_WorkCenterMaster] FOREIGN KEY ([WorkCenterMasterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id])
);

