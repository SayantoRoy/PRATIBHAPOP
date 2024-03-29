﻿CREATE TABLE [TRN].[SamplePackingListForm] (
    [Id]                          VARCHAR (30) NOT NULL,
    [SamplePackingListMaterialId] VARCHAR (10) NOT NULL,
    [SamplePackingListId]         VARCHAR (10) NOT NULL,
    [FirstFormId]                 VARCHAR (30) NULL,
    [MaterialGroupPackingFormId]  VARCHAR (10) NOT NULL,
    [PackingFormId]               VARCHAR (10) NOT NULL,
    [PackingFormNo]               VARCHAR (30) NULL,
    [ContainerQty]                INT          CONSTRAINT [DF_SamplePackingListForm_PackingFormIdQty] DEFAULT ((0)) NULL,
    [ContentQty]                  INT          CONSTRAINT [DF_SamplePackingListForm_TotalQty] DEFAULT ((0)) NULL,
    [PackFormType]                VARCHAR (10) NULL,
    [AddedBy]                     VARCHAR (30) CONSTRAINT [DF_SamplePackingListForm_AddedBy] DEFAULT ((1)) NOT NULL,
    [AddedDate]                   DATETIME     NOT NULL,
    [AddedFromIP]                 VARCHAR (15) NOT NULL,
    [UpdatedBy]                   VARCHAR (30) NULL,
    [UpdatedDate]                 DATETIME     NULL,
    [UpdatedFromIP]               VARCHAR (15) NULL,
    CONSTRAINT [PK_SamplePackingListForm] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SamplePackingListForm_MaterialGroupPackingForm] FOREIGN KEY ([MaterialGroupPackingFormId]) REFERENCES [MST].[MaterialGroupPackingForm] ([Id]),
    CONSTRAINT [FK_SamplePackingListForm_PackingForm] FOREIGN KEY ([PackingFormId]) REFERENCES [HKP].[PackingForm] ([Id]),
    CONSTRAINT [FK_SamplePackingListForm_SamplePackingList] FOREIGN KEY ([SamplePackingListId]) REFERENCES [TRN].[SamplePackingList] ([Id]),
    CONSTRAINT [FK_SamplePackingListForm_SamplePackingListForm] FOREIGN KEY ([FirstFormId]) REFERENCES [TRN].[SamplePackingListForm] ([Id]),
    CONSTRAINT [FK_SamplePackingListForm_SamplePackingListMaterial] FOREIGN KEY ([SamplePackingListMaterialId]) REFERENCES [TRN].[SamplePackingListMaterial] ([Id])
);

