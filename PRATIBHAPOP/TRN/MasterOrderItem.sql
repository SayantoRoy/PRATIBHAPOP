CREATE TABLE [TRN].[MasterOrderItem] (
    [Id]                         VARCHAR (10)    NOT NULL,
    [MasterOrderId]              VARCHAR (10)    NOT NULL,
    [InquiryItemId]              VARCHAR (10)    NULL,
    [SampleItemId]               VARCHAR (10)    NULL,
    [MaterialMasterId]           VARCHAR (30)    NOT NULL,
    [ArticleId]                  VARCHAR (10)    NULL,
    [BuyerReferenceNo]           VARCHAR (20)    NULL,
    [OwnReferenceNo]             VARCHAR (20)    NULL,
    [TotalQty]                   DECIMAL (18, 2) NOT NULL,
    [AddedBy]                    VARCHAR (30)    NOT NULL,
    [AddedDate]                  DATETIME        NOT NULL,
    [AddedFromIP]                VARCHAR (15)    NOT NULL,
    [UpdatedBy]                  VARCHAR (30)    NULL,
    [UpdatedDate]                DATETIME        NULL,
    [UpdatedFromIP]              VARCHAR (15)    NULL,
    [OrderWastagePercentage]     DECIMAL (18, 2) NULL,
    [ExtraOrderPercentage]       DECIMAL (18, 2) NULL,
    [Type]                       VARCHAR (15)    NULL,
    [TestingStandardId]          VARCHAR (10)    NULL,
    [ProductionGrouping]         VARCHAR (50)    NULL,
    [IsRepeat]                   BIT             DEFAULT ((0)) NOT NULL,
    [ContractId]                 VARCHAR (10)    NULL,
    [BuyerItemDescription]       VARCHAR (250)   NULL,
    [MainRawMaterialDescription] VARCHAR (250)   NULL,
    [JobWorkType]                VARCHAR (30)    NULL,
    [EntityIdWithinCompany]      VARCHAR (10)    NULL,
    [EntityIdWithinGroup]        VARCHAR (10)    NULL,
    [PartyId]                    VARCHAR (10)    NULL,
    [ProductLibraryId]           VARCHAR (30)    NULL,
    [FileName]                   VARCHAR (100)   NULL,
    [Remark]                     VARCHAR (250)   NULL,
    CONSTRAINT [PK_MasterOrderItem] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ContractId]) REFERENCES [dbo].[Contract] ([Id]),
    CONSTRAINT [FK_MasterOrderItem_Article] FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_MasterOrderItem_EntityIdWithinCompany] FOREIGN KEY ([EntityIdWithinCompany]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_MasterOrderItem_EntityIdWithinGroup] FOREIGN KEY ([EntityIdWithinGroup]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_MasterOrderItem_MasterOrder] FOREIGN KEY ([MasterOrderId]) REFERENCES [TRN].[MasterOrder] ([Id]),
    CONSTRAINT [FK_MasterOrderItem_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_MasterOrderItem_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_MasterOrderItem_ProductLibrary] FOREIGN KEY ([ProductLibraryId]) REFERENCES [dbo].[ProductLibrary] ([Id]),
    CONSTRAINT [FK_MasterOrderItem_TestingStandard] FOREIGN KEY ([TestingStandardId]) REFERENCES [SCS].[TestingStandard] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [Ind_MasterOrderItem]
    ON [TRN].[MasterOrderItem]([Id] ASC, [MasterOrderId] ASC);

