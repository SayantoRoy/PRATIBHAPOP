CREATE TABLE [TRN].[POService] (
    [Id]                 VARCHAR (10)     NOT NULL,
    [InventoryReceiveId] VARCHAR (10)     NOT NULL,
    [ServiceMasterId]    VARCHAR (12)     NOT NULL,
    [Amount]             DECIMAL (18, 10) NOT NULL,
    [TotalTaxAmount]     DECIMAL (18, 10) NOT NULL,
    [AddedBy]            VARCHAR (30)     NOT NULL,
    [AddedDate]          DATETIME         NOT NULL,
    [AddedFromIP]        VARCHAR (15)     NOT NULL,
    [UpdatedBy]          VARCHAR (30)     NULL,
    [UpdatedDate]        DATETIME         NULL,
    [UpdatedFromIP]      VARCHAR (15)     NULL,
    [GRNServiceAmount]   DECIMAL (18, 10) NULL,
    [AmountStatus]       BIT              NULL,
    [Description]        VARCHAR (300)    NULL,
    CONSTRAINT [PK_POService] PRIMARY KEY CLUSTERED ([Id] ASC)
);

