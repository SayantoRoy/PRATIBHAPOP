CREATE TABLE [TRN].[CheckLotDetail] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [CheckLotId]     VARCHAR (10)  NOT NULL,
    [CheckNumber]    INT           NOT NULL,
    [IsPrint]        BIT           NOT NULL,
    [IsCancel]       BIT           NOT NULL,
    [ResonForCash]   VARCHAR (250) NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    [SequenceNumber] INT           NULL,
    CONSTRAINT [PK_CheckLotDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CheckLotDetail_CheckLot] FOREIGN KEY ([CheckLotId]) REFERENCES [TRN].[CheckLot] ([Id])
);

