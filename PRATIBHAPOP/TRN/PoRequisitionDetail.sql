CREATE TABLE [TRN].[PoRequisitionDetail] (
    [Id]                  VARCHAR (10)     NOT NULL,
    [PODetailId]          VARCHAR (10)     NULL,
    [RequisitionDetailId] VARCHAR (30)     NOT NULL,
    [TransactionQty]      DECIMAL (18, 10) NULL,
    [BaseQty]             DECIMAL (18, 10) NULL,
    [AddedBy]             VARCHAR (30)     NOT NULL,
    [AddedDate]           DATETIME         NOT NULL,
    [AddedFromIP]         VARCHAR (15)     NOT NULL,
    [UpdatedBy]           VARCHAR (30)     NULL,
    [UpdatedDate]         DATETIME         NULL,
    [UpdatedFromIP]       VARCHAR (15)     NULL,
    CONSTRAINT [PK_PoRequisitionDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([RequisitionDetailId]) REFERENCES [TRN].[MaterialRequsitionDetails] ([Id]),
    FOREIGN KEY ([RequisitionDetailId]) REFERENCES [TRN].[MaterialRequsitionDetails] ([Id]),
    FOREIGN KEY ([RequisitionDetailId]) REFERENCES [TRN].[MaterialRequsitionDetails] ([Id])
);

