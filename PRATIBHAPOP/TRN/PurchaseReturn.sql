﻿CREATE TABLE [TRN].[PurchaseReturn] (
    [Id]                           VARCHAR (30)     NOT NULL,
    [CompanyGroupId]               VARCHAR (10)     NOT NULL,
    [CompanyId]                    VARCHAR (10)     NOT NULL,
    [PlantId]                      VARCHAR (10)     NOT NULL,
    [MaterialStorageId]            VARCHAR (10)     NOT NULL,
    [CurrencyId]                   VARCHAR (10)     NOT NULL,
    [PartyId]                      VARCHAR (10)     NULL,
    [DocRefNo]                     VARCHAR (20)     NOT NULL,
    [DocDate]                      DATE             NOT NULL,
    [GateEntryNo]                  VARCHAR (50)     NULL,
    [EntryDate]                    DATE             NOT NULL,
    [FixedAssetOrInventory]        VARCHAR (10)     NOT NULL,
    [PODepended]                   BIT              NOT NULL,
    [AlongwithInvoice]             BIT              NOT NULL,
    [InvoiceNo]                    VARCHAR (20)     NULL,
    [InvoiceDate]                  DATE             NULL,
    [AddedBy]                      VARCHAR (30)     NOT NULL,
    [AddedDate]                    DATETIME         NOT NULL,
    [AddedFromIP]                  VARCHAR (15)     NOT NULL,
    [UpdatedBy]                    VARCHAR (30)     NULL,
    [UpdatedDate]                  DATETIME         NULL,
    [UpdatedFromIP]                VARCHAR (15)     NULL,
    [PaymentTermId]                VARCHAR (10)     NULL,
    [BaseOnDueDate]                DATETIME         NULL,
    [BaseNoOfDays]                 INT              NOT NULL,
    [MatureDate]                   DATETIME         NULL,
    [Status]                       VARCHAR (15)     NULL,
    [BaseCurrencyId]               VARCHAR (10)     NOT NULL,
    [InvoicingPartyPlantId]        VARCHAR (12)     NULL,
    [DeliveryPartyPlantId]         VARCHAR (12)     NULL,
    [EntityId]                     VARCHAR (10)     NULL,
    [POReturnDate ]                DATE             NOT NULL,
    [IsNonCreditable]              BIT              NOT NULL,
    [InvoicingByAddress]           VARCHAR (200)    NULL,
    [DeliveryByAddress]            VARCHAR (200)    NULL,
    [OpeningBalanceId]             VARCHAR (30)     NULL,
    [ToCurrencyRate]               DECIMAL (18, 10) NOT NULL,
    [IsTaxApplicable]              BIT              NOT NULL,
    [PartyType]                    VARCHAR (10)     NULL,
    [EmployeeId]                   VARCHAR (30)     NULL,
    [IsApproved]                   BIT              NOT NULL,
    [IsPaymentHold]                BIT              NOT NULL,
    [ShortageStatus]               VARCHAR (15)     NULL,
    [CheckedBy]                    VARCHAR (30)     NULL,
    [CheckedByStatus]              VARCHAR (30)     NULL,
    [ApprovedBy]                   VARCHAR (30)     NULL,
    [ApprovedByStatus]             VARCHAR (30)     NULL,
    [GRNType]                      VARCHAR (30)     NULL,
    [IsNonVendor]                  BIT              NULL,
    [Reason]                       VARCHAR (300)    NULL,
    [ApprovedHoldRejectReason]     VARCHAR (300)    NULL,
    [CheckedHoldRejectReason]      VARCHAR (300)    NULL,
    [NoteForAccounts]              TEXT             NULL,
    [ToBeCheckedRetrieve]          BIT              NULL,
    [ToBeApporvedRetrieve]         BIT              NULL,
    [PurchaseDocumentAcceptanceId] VARCHAR (10)     NULL,
    [InventoryReceiveId]           VARCHAR (10)     NULL,
    CONSTRAINT [PK_PurchaseReturn] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PurchaseReturn_BaseCurrency] FOREIGN KEY ([BaseCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [fk_PurchaseReturn_CkedBy1] FOREIGN KEY ([CheckedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_PurchaseReturn_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_DeliveryPartyPlant] FOREIGN KEY ([DeliveryPartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_PurchaseReturn_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_GateEntry_No] FOREIGN KEY ([GateEntryNo]) REFERENCES [TRN].[GateEntry] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_InventoryReceive] FOREIGN KEY ([InventoryReceiveId]) REFERENCES [TRN].[InventoryReceive] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_InvoicingPartyPlant] FOREIGN KEY ([InvoicingPartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_MaterialStorage] FOREIGN KEY ([MaterialStorageId]) REFERENCES [HKP].[MaterialStorage] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_OpeningBalance_OpeningBalanceId] FOREIGN KEY ([OpeningBalanceId]) REFERENCES [TRN].[OpeningBalance] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_PaymentTerm] FOREIGN KEY ([PaymentTermId]) REFERENCES [MST].[PaymentTerm] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_PlantId] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_PurchaseDocumentAcceptance] FOREIGN KEY ([PurchaseDocumentAcceptanceId]) REFERENCES [TRN].[PurchaseDocAcceptance] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_PurchaseDocumentAcp] FOREIGN KEY ([PurchaseDocumentAcceptanceId]) REFERENCES [TRN].[PurchaseDocAcceptance] ([Id])
);

