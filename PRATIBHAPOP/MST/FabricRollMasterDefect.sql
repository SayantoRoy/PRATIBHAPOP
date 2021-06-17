CREATE TABLE [MST].[FabricRollMasterDefect] (
    [Id]                 VARCHAR (30) NOT NULL,
    [DefectCodeId]       VARCHAR (10) NOT NULL,
    [DefectCount]        INT          NOT NULL,
    [FabricRollMasterId] VARCHAR (10) NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_FabricRollMasterDefect] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FabricRollMasterDefect_DefectCode] FOREIGN KEY ([DefectCodeId]) REFERENCES [MST].[DefectCode] ([Id]),
    CONSTRAINT [FK_FabricRollMasterDefect_FabricRollMaster] FOREIGN KEY ([FabricRollMasterId]) REFERENCES [TRN].[FabricRollMaster] ([Id])
);

