CREATE TABLE [dbo].[MovementItems] (
    [Id]            VARCHAR (20) NOT NULL,
    [Item]          VARCHAR (50) NOT NULL,
    [UOMId]         VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_MovementItems] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MovementItems_UOMId] FOREIGN KEY ([UOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

