CREATE TABLE [SCS].[TestingStandardBuyer] (
    [Id]                VARCHAR (10) NOT NULL,
    [TestingStandardId] VARCHAR (10) NOT NULL,
    [BuyerId]           VARCHAR (10) NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_TestingStandardBuyer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TestingStandardBuyer_Buyer] FOREIGN KEY ([BuyerId]) REFERENCES [HKP].[Buyer] ([Id]),
    CONSTRAINT [FK_TestingStandardBuyer_TestingStandard] FOREIGN KEY ([TestingStandardId]) REFERENCES [SCS].[TestingStandard] ([Id])
);

