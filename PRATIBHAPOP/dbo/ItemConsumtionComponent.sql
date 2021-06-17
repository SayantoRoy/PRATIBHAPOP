CREATE TABLE [dbo].[ItemConsumtionComponent] (
    [Id]                     VARCHAR (30)  NOT NULL,
    [ItemConsumtionMasterId] VARCHAR (30)  NULL,
    [ComponentName]          VARCHAR (200) NOT NULL,
    [AreaType]               VARCHAR (30)  NOT NULL,
    [NoOfParts]              INT           NOT NULL,
    [AddedBy]                VARCHAR (30)  NOT NULL,
    [AddedDate]              DATETIME      NOT NULL,
    [AddedFromIP]            VARCHAR (15)  NOT NULL,
    [UpdatedBy]              VARCHAR (30)  NULL,
    [UpdatedDate]            DATETIME      NULL,
    [UpdatedFromIP]          VARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ItemConsumtionMasterId]) REFERENCES [dbo].[ItemConsumtionMaster] ([Id])
);

