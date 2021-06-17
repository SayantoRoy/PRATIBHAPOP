CREATE TABLE [dbo].[OperationVariationSizeGroup] (
    [Id]                   VARCHAR (10)    NOT NULL,
    [OperationVariationId] VARCHAR (10)    NULL,
    [SizeGroupId]          VARCHAR (10)    NULL,
    [SeamLength]           DECIMAL (18, 2) NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    CONSTRAINT [PK_OperationVariationSizeGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OperationVariationSizeGroup_OperationVariation] FOREIGN KEY ([OperationVariationId]) REFERENCES [MST].[OperationVariation] ([Id])
);

