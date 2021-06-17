CREATE TABLE [MST].[ExceptionForHoliday] (
    [Id]            VARCHAR (20)  NOT NULL,
    [PlantId]       VARCHAR (10)  NOT NULL,
    [Description]   VARCHAR (255) NULL,
    [FromDate]      DATETIME      NOT NULL,
    [ToDate]        DATETIME      NOT NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

