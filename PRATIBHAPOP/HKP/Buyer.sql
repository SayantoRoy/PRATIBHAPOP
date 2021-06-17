CREATE TABLE [HKP].[Buyer] (
    [Id]              VARCHAR (10)    NOT NULL,
    [BuyerCategoryId] VARCHAR (10)    NULL,
    [Sequence]        DECIMAL (18, 2) NOT NULL,
    [Code]            VARCHAR (10)    NOT NULL,
    [ShortName]       VARCHAR (15)    NOT NULL,
    [StandardName]    VARCHAR (50)    NOT NULL,
    [UserName]        VARCHAR (50)    NOT NULL,
    [Description]     VARCHAR (250)   NULL,
    [Remarks]         VARCHAR (250)   NULL,
    [Active]          BIT             NOT NULL,
    [Archive]         BIT             CONSTRAINT [DF_Buyer_Archive] DEFAULT ((0)) NOT NULL,
    [AddedBy]         VARCHAR (30)    NOT NULL,
    [AddedDate]       DATETIME        NOT NULL,
    [AddedFromIP]     VARCHAR (15)    NOT NULL,
    [UpdatedBy]       VARCHAR (30)    NULL,
    [UpdatedDate]     DATETIME        NULL,
    [UpdatedFromIP]   VARCHAR (15)    NULL,
    CONSTRAINT [PK_Buyer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Buyer_BuyerCategory] FOREIGN KEY ([BuyerCategoryId]) REFERENCES [HKP].[BuyerCategory] ([Id])
);

