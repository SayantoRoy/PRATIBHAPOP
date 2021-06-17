CREATE TABLE [MST].[OperationFgComponent] (
    [Id]            VARCHAR (23) NOT NULL,
    [OperationId]   VARCHAR (20) NOT NULL,
    [FGComponentId] VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_OperationFgComponent] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OperationFgComponent_FGComponent] FOREIGN KEY ([FGComponentId]) REFERENCES [HKP].[FGComponent] ([Id]),
    CONSTRAINT [FK_OperationFgComponent_Operation] FOREIGN KEY ([OperationId]) REFERENCES [MST].[Operation] ([Id])
);

