CREATE TABLE [MST].[TaxVariantDetail] (
    [Id]            VARCHAR (10) NOT NULL,
    [TaxVariantId]  VARCHAR (10) NOT NULL,
    [TaxCategoryId] VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_TaxVariantDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaxVariantDetail_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id]),
    CONSTRAINT [FK_TaxVariantDetail_TaxVariant] FOREIGN KEY ([TaxVariantId]) REFERENCES [MST].[TaxVariant] ([Id])
);

