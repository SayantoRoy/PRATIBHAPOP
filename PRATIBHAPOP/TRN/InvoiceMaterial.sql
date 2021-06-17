CREATE TABLE [TRN].[InvoiceMaterial] (
    [Id]                      VARCHAR (80)     NOT NULL,
    [InvoiceId]               VARCHAR (50)     NOT NULL,
    [InvoiceDetailId]         VARCHAR (80)     NOT NULL,
    [MaterialMasterId]        VARCHAR (30)     NOT NULL,
    [MaterialMasterArticleId] VARCHAR (10)     NULL,
    [UOMId]                   VARCHAR (10)     NOT NULL,
    [Qty]                     INT              NOT NULL,
    [Amount]                  DECIMAL (18, 10) NOT NULL,
    [AddedBy]                 VARCHAR (30)     NOT NULL,
    [AddedDate]               DATETIME         NOT NULL,
    [AddedFromIP]             VARCHAR (15)     NOT NULL,
    [UpdatedBy]               VARCHAR (30)     NULL,
    [UpdatedDate]             DATETIME         NULL,
    [UpdatedFromIP]           VARCHAR (15)     NULL,
    CONSTRAINT [PK_InvoiceMaterial] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceMaterial_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [TRN].[Invoice] ([Id]),
    CONSTRAINT [FK_InvoiceMaterial_InvoiceDetail] FOREIGN KEY ([InvoiceDetailId]) REFERENCES [TRN].[InvoiceDetail] ([Id]),
    CONSTRAINT [FK_InvoiceMaterial_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_InvoiceMaterial_MaterialMasterArticle] FOREIGN KEY ([MaterialMasterArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_InvoiceMaterial_UnitOfMeasurement] FOREIGN KEY ([UOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

