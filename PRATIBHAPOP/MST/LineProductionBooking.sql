CREATE TABLE [MST].[LineProductionBooking] (
    [Id]                  VARCHAR (10) NOT NULL,
    [ProductionDate]      DATE         NULL,
    [Line]                VARCHAR (50) NULL,
    [SalesOrder]          VARCHAR (50) NULL,
    [Fabrication]         VARCHAR (50) NULL,
    [Style]               VARCHAR (50) NULL,
    [TotalQty]            INT          NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    [NoApplicablePcsRate] BIT          NOT NULL,
    CONSTRAINT [PK_LineProductionBooking] PRIMARY KEY CLUSTERED ([Id] ASC)
);

