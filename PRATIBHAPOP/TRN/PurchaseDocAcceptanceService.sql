﻿CREATE TABLE [TRN].[PurchaseDocAcceptanceService] (
    [Id]                      VARCHAR (10)     NOT NULL,
    [PurchaseDocAcceptanceId] VARCHAR (10)     NOT NULL,
    [AcceptanceServiceId]     VARCHAR (10)     NOT NULL,
    [Amount]                  DECIMAL (18, 10) NOT NULL,
    [TotalTaxAmount]          DECIMAL (18, 10) NOT NULL,
    [AddedBy]                 VARCHAR (30)     NOT NULL,
    [AddedDate]               DATETIME         NOT NULL,
    [AddedFromIP]             VARCHAR (15)     NOT NULL,
    [UpdatedBy]               VARCHAR (30)     NULL,
    [UpdatedDate]             DATETIME         NULL,
    [UpdatedFromIP]           VARCHAR (15)     NULL,
    [CurrencyId]              VARCHAR (50)     NULL,
    [OpeningBankMasterId]     VARCHAR (10)     NULL,
    [BankAmount]              DECIMAL (18, 2)  DEFAULT ((0)) NOT NULL,
    [VoucherId]               VARCHAR (50)     NULL,
    [Rate]                    DECIMAL (18, 2)  NULL,
    [PartyId]                 VARCHAR (10)     NULL,
    [PartyPlantId]            VARCHAR (12)     NULL,
    [ServiceMasterId]         VARCHAR (12)     NOT NULL,
    CONSTRAINT [PK_PurchaseDocAcceptanceService] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PurchaseDocAcceptanceCharges_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptanceCharges_PartyPlant] FOREIGN KEY ([PartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptanceCharges_PurchaseDocAcceptance] FOREIGN KEY ([PurchaseDocAcceptanceId]) REFERENCES [TRN].[PurchaseDocAcceptance] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptanceCharges_Voucher] FOREIGN KEY ([VoucherId]) REFERENCES [TRN].[Voucher] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptanceService_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptanceService_PartyPlant] FOREIGN KEY ([PartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptanceService_PurchaseDocAcceptance] FOREIGN KEY ([PurchaseDocAcceptanceId]) REFERENCES [TRN].[PurchaseDocAcceptance] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptanceService_Voucher] FOREIGN KEY ([VoucherId]) REFERENCES [TRN].[Voucher] ([Id]),
    CONSTRAINT [FK_PurchaseDocAccService_ServiceMaster] FOREIGN KEY ([ServiceMasterId]) REFERENCES [HKP].[ServiceMaster] ([Id])
);

