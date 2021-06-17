CREATE TABLE [MST].[ProjectPlanningPurchaseOrder] (
    [Id]                           VARCHAR (10)    NOT NULL,
    [ProjectPlanningRequisitionId] VARCHAR (10)    NULL,
    [ProjectPlanningId]            VARCHAR (10)    NULL,
    [PartyId]                      VARCHAR (10)    NULL,
    [VendorReferanceNo]            VARCHAR (50)    NULL,
    [CurrencyId]                   VARCHAR (10)    NOT NULL,
    [ExchangeRate]                 DECIMAL (18, 4) NULL,
    [PoDate]                       DATETIME        NULL,
    [AddedBy]                      VARCHAR (30)    NOT NULL,
    [AddedDate]                    DATETIME        NOT NULL,
    [AddedFromIP]                  VARCHAR (15)    NOT NULL,
    [UpdatedBy]                    VARCHAR (30)    NULL,
    [UpdatedDate]                  DATETIME        NULL,
    [UpdatedFromIP]                VARCHAR (15)    NULL,
    CONSTRAINT [PK__FixedAss__3214EC070E0FAC44] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FixedAssetPurchaseOrder_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_FixedAssetPurchaseOrder_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_ProjectPlanningPurchaseOrder_ProjectPlanning] FOREIGN KEY ([ProjectPlanningId]) REFERENCES [MST].[ProjectPlanning] ([Id])
);

