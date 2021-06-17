CREATE TABLE [dbo].[BOMMasterAttachmentWithItem] (
    [Id]                VARCHAR (30) NOT NULL,
    [BOMMasterId]       VARCHAR (20) NULL,
    [MasterOrderId]     VARCHAR (10) NULL,
    [MasterOrderItemId] VARCHAR (10) NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([BOMMasterId]) REFERENCES [dbo].[BOMMaster] ([Id]),
    FOREIGN KEY ([MasterOrderId]) REFERENCES [TRN].[MasterOrder] ([Id]),
    FOREIGN KEY ([MasterOrderItemId]) REFERENCES [TRN].[MasterOrderItem] ([Id])
);

