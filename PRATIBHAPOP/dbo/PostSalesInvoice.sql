﻿CREATE TABLE [dbo].[PostSalesInvoice] (
    [Id]                          VARCHAR (30)  NOT NULL,
    [SalesId]                     VARCHAR (10)  NULL,
    [InvoiceDate]                 DATETIME      NULL,
    [BankMasterId]                VARCHAR (10)  NULL,
    [ShipmentModeId]              VARCHAR (10)  NULL,
    [PortOfLoadingId]             VARCHAR (10)  NULL,
    [ExpFormNo]                   VARCHAR (50)  NULL,
    [ExpDate]                     DATETIME      NULL,
    [CargoNetWt]                  VARCHAR (50)  NULL,
    [CargoGrossWt]                VARCHAR (50)  NULL,
    [Dimension]                   VARCHAR (50)  NULL,
    [ExFactoryDocRef]             VARCHAR (50)  NULL,
    [ExFactoryDate]               DATETIME      NULL,
    [TransportAgentId]            VARCHAR (50)  NULL,
    [TransportDocRefNo]           VARCHAR (50)  NULL,
    [TransportDocDate]            DATETIME      NULL,
    [TransportVehicleNo]          VARCHAR (50)  NULL,
    [TransportDriverName]         VARCHAR (50)  NULL,
    [TransportDriverNo]           VARCHAR (50)  NULL,
    [PreCarriageBy]               VARCHAR (50)  NULL,
    [PlaceOfReceiptByPreCarriage] VARCHAR (50)  NULL,
    [PreCarriageDocRef]           VARCHAR (50)  NULL,
    [PreCarriageDocDate]          DATETIME      NULL,
    [CNFAgentId]                  VARCHAR (50)  NULL,
    [CNFContainerNo]              VARCHAR (50)  NULL,
    [CNFVesselTrackingNo]         VARCHAR (50)  NULL,
    [CNFVesselName]               VARCHAR (50)  NULL,
    [CNFVesselSalesDetails]       VARCHAR (250) NULL,
    [CNFBLAWB]                    VARCHAR (250) NULL,
    [CNFBLAWBDate]                DATETIME      NULL,
    [ETA]                         DATETIME      NULL,
    [FinalDestinationId]          VARCHAR (10)  NULL,
    [PortOfDischargeId]           VARCHAR (10)  NULL,
    [PortOfDelivaryId]            VARCHAR (250) NULL,
    [BankDocRef]                  VARCHAR (250) NULL,
    [BankDocDate]                 DATETIME      NULL,
    [AddedBy]                     VARCHAR (30)  NOT NULL,
    [AddedDate]                   DATETIME      NOT NULL,
    [AddedFromIP]                 VARCHAR (15)  NOT NULL,
    [UpdatedBy]                   VARCHAR (30)  NULL,
    [UpdatedDate]                 DATETIME      NULL,
    [UpdatedFromIP]               VARCHAR (15)  NULL,
    CONSTRAINT [PK__PostSale__3214EC079C3468F8] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__PostSales__BankA__5040AE26] FOREIGN KEY ([BankMasterId]) REFERENCES [MST].[BankMaster] ([Id]),
    CONSTRAINT [FK__PostSales__Count__531D1AD1] FOREIGN KEY ([FinalDestinationId]) REFERENCES [MST].[Destination] ([Id]),
    CONSTRAINT [FK__PostSales__Invoi__4F4C89ED] FOREIGN KEY ([SalesId]) REFERENCES [TRN].[Sales] ([Id]),
    CONSTRAINT [FK__PostSales__PortO__5228F698] FOREIGN KEY ([PortOfLoadingId]) REFERENCES [MST].[Port] ([Id]),
    CONSTRAINT [FK__PostSales__Shipm__5134D25F] FOREIGN KEY ([ShipmentModeId]) REFERENCES [MST].[ShipMode] ([Id])
);

