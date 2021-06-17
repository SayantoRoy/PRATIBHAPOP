CREATE TABLE [MST].[RouteStoppage] (
    [Id]            VARCHAR (10)    NOT NULL,
    [RouteId]       VARCHAR (10)    NOT NULL,
    [StoppageId]    VARCHAR (10)    NOT NULL,
    [UpInTime]      VARCHAR (20)    NULL,
    [DownInTime]    VARCHAR (20)    NULL,
    [Sequence]      DECIMAL (18, 2) NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([RouteId]) REFERENCES [MST].[Route] ([Id]),
    FOREIGN KEY ([StoppageId]) REFERENCES [HKP].[Stoppage] ([Id])
);

