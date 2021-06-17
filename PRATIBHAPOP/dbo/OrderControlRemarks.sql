CREATE TABLE [dbo].[OrderControlRemarks] (
    [Id]             VARCHAR (30)  NOT NULL,
    [OrderControlId] VARCHAR (30)  NULL,
    [Remarks]        VARCHAR (250) NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_OrderControlRemarks] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OrderControlRemarks_OrderControl] FOREIGN KEY ([OrderControlId]) REFERENCES [dbo].[OrderControl] ([Id])
);

