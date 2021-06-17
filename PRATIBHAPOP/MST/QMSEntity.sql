CREATE TABLE [MST].[QMSEntity] (
    [Id]            VARCHAR (20) NOT NULL,
    [QMSMasterId]   VARCHAR (20) NOT NULL,
    [EntityId]      VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_QMSEntity] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_QMSEntity_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_QMSEntity_QMSMaster] FOREIGN KEY ([QMSMasterId]) REFERENCES [MST].[QMSMaster] ([Id])
);

