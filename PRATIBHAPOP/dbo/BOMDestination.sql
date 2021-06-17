CREATE TABLE [dbo].[BOMDestination] (
    [Id]            VARCHAR (20) NOT NULL,
    [BOMDetailId]   VARCHAR (20) NULL,
    [DestinationId] VARCHAR (10) NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_BOMDestination] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BOMDestination_BOMDetail] FOREIGN KEY ([BOMDetailId]) REFERENCES [dbo].[BOMDetail] ([Id]),
    CONSTRAINT [FK_BOMDestination_Destination] FOREIGN KEY ([DestinationId]) REFERENCES [MST].[Destination] ([Id])
);

