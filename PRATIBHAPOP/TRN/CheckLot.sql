CREATE TABLE [TRN].[CheckLot] (
    [Id]              VARCHAR (10) NOT NULL,
    [BankMasterId]    VARCHAR (10) NOT NULL,
    [LotNumber]       VARCHAR (50) NOT NULL,
    [FromNo]          INT          NOT NULL,
    [ToNo]            INT          NOT NULL,
    [IsNonSequential] BIT          NOT NULL,
    [Active]          BIT          NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    [IsClose]         BIT          DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_CheckLot] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CheckLot_BankMaster] FOREIGN KEY ([BankMasterId]) REFERENCES [MST].[BankMaster] ([Id])
);

