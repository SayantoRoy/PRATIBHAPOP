CREATE TABLE [TRN].[PurchaseDocAcceptanceServiceTax] (
    [Id]                             VARCHAR (20)     NOT NULL,
    [PurchaseDocAcceptanceId]        VARCHAR (10)     NULL,
    [PurchaseDocAcceptanceDetailId]  VARCHAR (10)     NULL,
    [PurchaseDocAcceptanceServiceId] VARCHAR (10)     NULL,
    [TaxCategoryId]                  VARCHAR (10)     NOT NULL,
    [HSNCodeId]                      VARCHAR (10)     NULL,
    [Percentage]                     DECIMAL (18, 10) NOT NULL,
    [TaxAmount]                      DECIMAL (18, 10) NOT NULL,
    [AddedBy]                        VARCHAR (30)     NOT NULL,
    [AddedDate]                      DATETIME         NOT NULL,
    [AddedFromIP]                    VARCHAR (15)     NOT NULL,
    [UpdatedBy]                      VARCHAR (30)     NULL,
    [UpdatedDate]                    DATETIME         NULL,
    [UpdatedFromIP]                  VARCHAR (15)     NULL,
    CONSTRAINT [PK_PurchaseDocAcceptanceServiceTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PurchaseDocAcceptanceServiceTax_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptanceServiceTax_PurchaseDocAcceptance] FOREIGN KEY ([PurchaseDocAcceptanceId]) REFERENCES [TRN].[PurchaseDocAcceptance] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptanceServiceTax_PurchaseDocAcceptanceDetail] FOREIGN KEY ([PurchaseDocAcceptanceDetailId]) REFERENCES [TRN].[PurchaseDocAcceptanceDetail] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptanceServiceTax_PurchaseDocAcceptanceService] FOREIGN KEY ([PurchaseDocAcceptanceServiceId]) REFERENCES [TRN].[PurchaseDocAcceptanceService] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptanceServiceTax_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id])
);

