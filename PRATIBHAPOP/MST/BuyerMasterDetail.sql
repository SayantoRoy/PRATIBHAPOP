CREATE TABLE [MST].[BuyerMasterDetail] (
    [Id]            VARCHAR (10) NOT NULL,
    [EntityId]      VARCHAR (10) NOT NULL,
    [BuyerMasterId] VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_BuyerMasterDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BuyerMasterDetail_BuyerMaster] FOREIGN KEY ([BuyerMasterId]) REFERENCES [MST].[BuyerMaster] ([Id]),
    CONSTRAINT [FK_BuyerMasterDetail_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id])
);

