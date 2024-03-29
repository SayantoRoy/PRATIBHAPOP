﻿CREATE TABLE [TRN].[InventoryReceive] (
    [Id]                           VARCHAR (10)     NOT NULL,
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
    [BaseCurrencyId]               VARCHAR (10)     NULL,
    [InvoicingPartyPlantId]        VARCHAR (12)     NULL,
    [DeliveryPartyPlantId]         VARCHAR (12)     NULL,
    [EntityId]                     VARCHAR (10)     NULL,
    [GRNDate]                      DATE             NOT NULL,
    [IsNonCreditable]              BIT              NOT NULL,
    [InvoicingByAddress]           VARCHAR (300)    NULL,
    [DeliveryByAddress]            VARCHAR (300)    NULL,
    [OpeningBalanceId]             VARCHAR (30)     NULL,
    [ToCurrencyRate]               DECIMAL (18, 10) NOT NULL,
    [IsTaxApplicable]              BIT              NOT NULL,
    [PartyType]                    VARCHAR (10)     NULL,
    [EmployeeId]                   VARCHAR (30)     NULL,
    [IsApproved]                   BIT              NOT NULL,
    [IsPaymentHold]                BIT              NOT NULL,
    [POId]                         VARCHAR (10)     NULL,
    [ShortageStatus]               VARCHAR (15)     NULL,
    [CheckedBy]                    VARCHAR (30)     NULL,
    [CheckedByStatus]              VARCHAR (30)     NULL,
    [AuthorizedBy]                 VARCHAR (30)     NULL,
    [AuthorizedByStatus]           VARCHAR (30)     NULL,
    [RequisitionId]                VARCHAR (10)     NULL,
    [GRNType]                      VARCHAR (30)     NULL,
    [IsNonVendor]                  BIT              NULL,
    [Reason]                       VARCHAR (300)    NULL,
    [ApprovedHoldRejectReason]     VARCHAR (300)    NULL,
    [CheckedHoldRejectReason]      VARCHAR (300)    NULL,
    [NoteForAccounts]              TEXT             NULL,
    [ToBeCheckedRetrieve]          BIT              NULL,
    [ToBeApporvedRetrieve]         BIT              NULL,
    [PurchaseDocumentAcceptanceId] VARCHAR (10)     NULL,
    [ContractId]                   VARCHAR (10)     NULL,
    [IsFOC]                        BIT              NULL,
    [RequiredPosting]              BIT              NULL,
    [VoucherId]                    VARCHAR (50)     NULL,
    [IsInvoice]                    BIT              NULL,
    [FromPlantId]                  VARCHAR (10)     NULL,
    [ToPlantId]                    VARCHAR (10)     NULL,
    [ToVoucherId]                  VARCHAR (50)     NULL,
    CONSTRAINT [PK_InventoryReveive] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [F_FromPlantId] FOREIGN KEY ([FromPlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [F_ToPlantId] FOREIGN KEY ([ToPlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [fk_AuthoriedBy1] FOREIGN KEY ([AuthorizedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [fk_AuthoriedBy12] FOREIGN KEY ([AuthorizedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [fk_CkedBy11] FOREIGN KEY ([CheckedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [fk_CkedBy111] FOREIGN KEY ([CheckedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [fk_CkedBy321] FOREIGN KEY ([CheckedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_GateEntry_No1] FOREIGN KEY ([GateEntryNo]) REFERENCES [TRN].[GateEntry] ([Id]),
    CONSTRAINT [FK_InventoryReceive_BaseCurrency1] FOREIGN KEY ([BaseCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_InventoryReceive_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_InventoryReceive_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_InventoryReceive_DeliveryPartyPlant] FOREIGN KEY ([DeliveryPartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_InventoryReceive_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_InventoryReceive_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_InventoryReceive_InvoicingPartyPlant] FOREIGN KEY ([InvoicingPartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_InventoryReceive_MaterialStorage] FOREIGN KEY ([MaterialStorageId]) REFERENCES [HKP].[MaterialStorage] ([Id]),
    CONSTRAINT [FK_InventoryReceive_OpeningBalance_OpeningBalanceId] FOREIGN KEY ([OpeningBalanceId]) REFERENCES [TRN].[OpeningBalance] ([Id]),
    CONSTRAINT [FK_InventoryReceive_PaymentTerm] FOREIGN KEY ([PaymentTermId]) REFERENCES [MST].[PaymentTerm] ([Id]),
    CONSTRAINT [FK_InventoryReceive_PlantId] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_InventoryReceive_PurchaseDocumentAcceptance] FOREIGN KEY ([PurchaseDocumentAcceptanceId]) REFERENCES [TRN].[PurchaseDocAcceptance] ([Id]),
    CONSTRAINT [FK_InventoryReceive_Voucher] FOREIGN KEY ([VoucherId]) REFERENCES [TRN].[Voucher] ([Id]),
    CONSTRAINT [FK_InventoryReveive_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_InventoryReveive_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [fk_POId] FOREIGN KEY ([POId]) REFERENCES [TRN].[PurchaseOrder] ([Id]),
    CONSTRAINT [InventoryReceive_ContractId] FOREIGN KEY ([ContractId]) REFERENCES [dbo].[Contract] ([Id]),
    CONSTRAINT [InventoryReceive_ToVoucher] FOREIGN KEY ([ToVoucherId]) REFERENCES [TRN].[Voucher] ([Id])
);

