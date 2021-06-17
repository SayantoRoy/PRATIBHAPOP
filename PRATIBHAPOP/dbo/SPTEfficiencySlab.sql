CREATE TABLE [dbo].[SPTEfficiencySlab] (
    [Id]                 VARCHAR (30)    NOT NULL,
    [Minimum]            DECIMAL (10, 2) NULL,
    [Maximum]            DECIMAL (10, 2) NULL,
    [FirstDayEfficiency] DECIMAL (10, 2) NULL,
    [Increment]          DECIMAL (10, 2) NULL,
    [LastDayEfficiency]  DECIMAL (10, 2) NULL,
    [PlantId]            VARCHAR (10)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

