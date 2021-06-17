CREATE TABLE [MST].[TaxCodeYear] (
    [Id]            VARCHAR (10) NOT NULL,
    [TaxYearId]     VARCHAR (10) NULL,
    [TaxCodeId]     VARCHAR (10) NOT NULL,
    [Type]          VARCHAR (20) NULL,
    [Active]        BIT          NOT NULL,
    [Archive]       BIT          NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_TaxCodeYear] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaxCodeYear_TaxCode] FOREIGN KEY ([TaxCodeId]) REFERENCES [MST].[TaxCode] ([Id]),
    CONSTRAINT [FK_TaxCodeYear_TaxYear] FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cumulative
BreakUp
Fixedvalue
FixedPercentage default', @level0type = N'SCHEMA', @level0name = N'MST', @level1type = N'TABLE', @level1name = N'TaxCodeYear', @level2type = N'COLUMN', @level2name = N'Type';

