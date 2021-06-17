CREATE TABLE [TRN].[PreCostingDetail] (
    [Id]                    VARCHAR (10)    NOT NULL,
    [PreCostingId]          VARCHAR (10)    NOT NULL,
    [MaterialGroupMasterId] VARCHAR (10)    NOT NULL,
    [BaseUOMId]             VARCHAR (10)    NULL,
    [AlternativeUOMId]      VARCHAR (10)    NULL,
    [UomValue]              DECIMAL (18, 4) NULL,
    [Description]           VARCHAR (150)   NULL,
    [Rate]                  DECIMAL (18, 4) NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    CONSTRAINT [PK_PreCostingDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PreCostingDetail_MaterialGroupMaster] FOREIGN KEY ([MaterialGroupMasterId]) REFERENCES [MST].[MaterialGroupMaster] ([Id]),
    CONSTRAINT [FK_PreCostingDetail_PreCosting] FOREIGN KEY ([PreCostingId]) REFERENCES [TRN].[PreCosting] ([Id]),
    CONSTRAINT [FK_PreCostingDetail_UnitOfMeasurement] FOREIGN KEY ([BaseUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_PreCostingDetail_UnitOfMeasurement1] FOREIGN KEY ([AlternativeUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

