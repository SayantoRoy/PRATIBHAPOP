CREATE TABLE [ORG].[EntityLine] (
    [Id]            VARCHAR (10) NOT NULL,
    [EntityId]      VARCHAR (10) NOT NULL,
    [LineId]        VARCHAR (10) NOT NULL,
    [Active]        BIT          NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_EntityLine] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EntityLine_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_EntityLine_Line] FOREIGN KEY ([LineId]) REFERENCES [ORG].[Line] ([Id])
);

