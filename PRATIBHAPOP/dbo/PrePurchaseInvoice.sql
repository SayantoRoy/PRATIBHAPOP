CREATE TABLE [dbo].[PrePurchaseInvoice] (
    [Id]                        VARCHAR (10)  NOT NULL,
    [InvoiceNo]                 VARCHAR (20)  NULL,
    [InvoiceDate]               DATETIME      NULL,
    [PurchaseLCNo]              VARCHAR (10)  NULL,
    [BLAWBNo]                   VARCHAR (100) NULL,
    [BLAWBDate]                 DATETIME      NULL,
    [ShipmentMode]              VARCHAR (10)  NULL,
    [PackingDescription]        VARCHAR (250) NULL,
    [MaterialDescription]       VARCHAR (250) NULL,
    [VesselDetail]              VARCHAR (250) NULL,
    [VesselTrackingNo]          VARCHAR (100) NULL,
    [ETA]                       DATETIME      NULL,
    [PackingListAttachment]     VARCHAR (100) NULL,
    [InvoiceAttachment]         VARCHAR (100) NULL,
    [NegotiableDocDispatchNo]   VARCHAR (50)  NULL,
    [NegotiableDocDispatchDate] DATETIME      NULL,
    CONSTRAINT [PK_PrePurchaseInvoice] PRIMARY KEY CLUSTERED ([Id] ASC)
);

