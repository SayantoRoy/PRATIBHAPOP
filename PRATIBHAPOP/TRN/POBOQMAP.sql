CREATE TABLE [TRN].[POBOQMAP] (
    [Id]               VARCHAR (10)     NOT NULL,
    [PODetailId]       VARCHAR (10)     NULL,
    [BOQDetailId]      VARCHAR (30)     NOT NULL,
    [TransactionQty]   DECIMAL (18, 10) NULL,
    [AddedBy]          VARCHAR (30)     NOT NULL,
    [AddedDate]        DATETIME         NOT NULL,
    [AddedFromIP]      VARCHAR (15)     NOT NULL,
    [UpdatedBy]        VARCHAR (30)     NULL,
    [UpdatedDate]      DATETIME         NULL,
    [UpdatedFromIP]    VARCHAR (15)     NULL,
    [TransactionUoMId] VARCHAR (10)     NULL,
    [BaseQty]          DECIMAL (18, 10) NULL,
    [BaseUoMId]        VARCHAR (10)     NULL,
    [POBOQQty]         DECIMAL (18, 10) NULL,
    [POUoMId]          VARCHAR (10)     NULL,
    CONSTRAINT [PK_POBOQMAP] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_BOQDetailId] FOREIGN KEY ([BOQDetailId]) REFERENCES [dbo].[BOQ] ([Id]),
    CONSTRAINT [fk_POBOQMAP_BaseUoMId] FOREIGN KEY ([BaseUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [fk_POBOQMAP_POUoMId] FOREIGN KEY ([POUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [fk_PODetailId] FOREIGN KEY ([PODetailId]) REFERENCES [TRN].[PurchaseOrderDetail] ([Id]),
    CONSTRAINT [fk_TransactionUoMId1] FOREIGN KEY ([TransactionUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

