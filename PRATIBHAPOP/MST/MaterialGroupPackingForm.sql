CREATE TABLE [MST].[MaterialGroupPackingForm] (
    [Id]                    VARCHAR (10) NOT NULL,
    [MaterialGroupMasterId] VARCHAR (10) NOT NULL,
    [PackingFormId]         VARCHAR (10) NOT NULL,
    [Sequence]              INT          NOT NULL,
    [IsSingleEntry]         BIT          NOT NULL,
    [AddedBy]               VARCHAR (30) NOT NULL,
    [AddedDate]             DATETIME     NOT NULL,
    [AddedFromIP]           VARCHAR (15) NOT NULL,
    [UpdatedBy]             VARCHAR (30) NULL,
    [UpdatedDate]           DATETIME     NULL,
    [UpdatedFromIP]         VARCHAR (15) NULL,
    CONSTRAINT [PK_MaterialGroupPackingForm] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PackingForm_MaterialGroupMaster] FOREIGN KEY ([MaterialGroupMasterId]) REFERENCES [MST].[MaterialGroupMaster] ([Id]),
    CONSTRAINT [FK_PackingForm_PackingForm1] FOREIGN KEY ([PackingFormId]) REFERENCES [HKP].[PackingForm] ([Id])
);

