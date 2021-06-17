CREATE TABLE [dbo].[JWLocationActivity] (
    [Id]            VARCHAR (20)    NOT NULL,
    [Sequence]      DECIMAL (18, 2) NULL,
    [JWActivityId]  VARCHAR (20)    NOT NULL,
    [JWLocationId]  VARCHAR (20)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    [AddedBy]       VARCHAR (30)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([JWActivityId]) REFERENCES [dbo].[JWActivity] ([Id]),
    FOREIGN KEY ([JWLocationId]) REFERENCES [dbo].[JWLocation] ([Id])
);

