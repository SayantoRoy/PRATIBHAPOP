CREATE TABLE [dbo].[ContractItems] (
    [Id]                VARCHAR (30)    NOT NULL,
    [MasterOrderItemId] VARCHAR (10)    NULL,
    [ContractId]        VARCHAR (10)    NULL,
    [MaterialMasterId]  VARCHAR (30)    NULL,
    [ArticleId]         VARCHAR (10)    NULL,
    [Qty]               DECIMAL (18, 2) NULL,
    [Rate]              DECIMAL (18, 4) NULL,
    [Amount]            DECIMAL (18, 2) NULL,
    [BuyerItemRef]      VARCHAR (50)    NULL,
    [OwnItemRef]        VARCHAR (50)    NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    CONSTRAINT [PK_ContractItems] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ContractItems_Contract] FOREIGN KEY ([ContractId]) REFERENCES [dbo].[Contract] ([Id]),
    CONSTRAINT [FK_ContractItems_MasterOrderItem] FOREIGN KEY ([MasterOrderItemId]) REFERENCES [TRN].[MasterOrderItem] ([Id]),
    CONSTRAINT [FK_ContractItems_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_ContractItems_MaterialMasterArticle] FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id])
);

