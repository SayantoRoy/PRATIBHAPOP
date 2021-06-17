CREATE TABLE [MST].[TaxCode] (
    [Id]               VARCHAR (10)  NOT NULL,
    [TaxCategoryId]    VARCHAR (10)  NULL,
    [CountryId]        VARCHAR (10)  NULL,
    [Code]             VARCHAR (10)  NOT NULL,
    [StandardName]     VARCHAR (50)  NOT NULL,
    [UserName]         VARCHAR (50)  NOT NULL,
    [IsCreditable]     BIT           NOT NULL,
    [IsMerge]          BIT           NOT NULL,
    [IsWithhold]       BIT           NOT NULL,
    [BaseGrossOrNet]   VARCHAR (25)  NULL,
    [InvoiceOrPayment] VARCHAR (20)  NULL,
    [InputOrOutput]    VARCHAR (50)  NULL,
    [ManuallyEditable] BIT           NULL,
    [Description]      VARCHAR (250) NULL,
    [Active]           BIT           NOT NULL,
    [Archive]          BIT           NOT NULL,
    [AddedBy]          VARCHAR (30)  NOT NULL,
    [AddedDate]        DATETIME      NOT NULL,
    [AddedFromIP]      VARCHAR (15)  NOT NULL,
    [UpdatedBy]        VARCHAR (30)  NULL,
    [UpdatedDate]      DATETIME      NULL,
    [UpdatedFromIP]    VARCHAR (15)  NULL,
    [IsRCM]            BIT           NULL,
    CONSTRAINT [PK_TaxCode] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaxCode_Country] FOREIGN KEY ([CountryId]) REFERENCES [SCS].[Country] ([Id]),
    CONSTRAINT [FK_TaxCode_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'', @level0type = N'SCHEMA', @level0name = N'MST', @level1type = N'TABLE', @level1name = N'TaxCode', @level2type = N'COLUMN', @level2name = N'Description';

