CREATE TABLE [MST].[LSD] (
    [Id]                              VARCHAR (10) NOT NULL,
    [BuyerId]                         VARCHAR (10) NULL,
    [ShipModeId]                      VARCHAR (10) NULL,
    [OrderLeadTime]                   INT          NULL,
    [ProductionLeadTime]              INT          NULL,
    [FinishingLeadTime]               INT          NULL,
    [ExFactoryLeadTime]               INT          NULL,
    [AddedBy]                         VARCHAR (30) NOT NULL,
    [AddedDate]                       DATETIME     NOT NULL,
    [AddedFromIP]                     VARCHAR (15) NOT NULL,
    [UpdatedBy]                       VARCHAR (30) NULL,
    [UpdatedDate]                     DATETIME     NULL,
    [UpdatedFromIP]                   VARCHAR (15) NULL,
    [MainRawMaterialInhouseLeadTime]  INT          NULL,
    [OtherRawMaterialInhouseLeadTime] INT          NULL,
    [Weekend]                         VARCHAR (10) NULL,
    CONSTRAINT [PK_LSD] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LSD_Buyer] FOREIGN KEY ([BuyerId]) REFERENCES [HKP].[Buyer] ([Id])
);

