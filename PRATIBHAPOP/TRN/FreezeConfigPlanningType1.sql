CREATE TABLE [TRN].[FreezeConfigPlanningType1] (
    [Id]            VARCHAR (30) NOT NULL,
    [EntityId]      VARCHAR (10) NULL,
    [FreezeDate]    DATE         NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id])
);

