CREATE TABLE [TRN].[SamplePackingListMaterial] (
    [Id]                  VARCHAR (10) NOT NULL,
    [SamplePackingListId] VARCHAR (10) NOT NULL,
    [BaseUOMId]           VARCHAR (10) NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    CONSTRAINT [PK_SamplePackingListMaterial_1] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SamplePackingListMaterial_BaseUOM] FOREIGN KEY ([BaseUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_SamplePackingListMaterial_SamplePackingList1] FOREIGN KEY ([SamplePackingListId]) REFERENCES [TRN].[SamplePackingList] ([Id])
);

