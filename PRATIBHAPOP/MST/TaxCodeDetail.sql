CREATE TABLE [MST].[TaxCodeDetail] (
    [Id]            VARCHAR (10)    NOT NULL,
    [TaxCodeId]     VARCHAR (10)    NOT NULL,
    [TaxCodeYearId] VARCHAR (10)    NULL,
    [Sequence]      INT             NOT NULL,
    [SlabDefine]    VARCHAR (25)    NULL,
    [TaxableIncome] DECIMAL (18, 4) NOT NULL,
    [TaxRate]       DECIMAL (18, 4) NOT NULL,
    [ValueOfFixed]  DECIMAL (18, 4) NOT NULL,
    [Active]        BIT             NOT NULL,
    [Archive]       BIT             NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_TaxCodeDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaxCodeDetail_TaxCode] FOREIGN KEY ([TaxCodeId]) REFERENCES [MST].[TaxCode] ([Id]),
    CONSTRAINT [FK_TaxCodeDetail_TaxCodeYear] FOREIGN KEY ([TaxCodeYearId]) REFERENCES [MST].[TaxCodeYear] ([Id])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'', @level0type = N'SCHEMA', @level0name = N'MST', @level1type = N'TABLE', @level1name = N'TaxCodeDetail', @level2type = N'COLUMN', @level2name = N'ValueOfFixed';

