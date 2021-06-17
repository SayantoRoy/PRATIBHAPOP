CREATE TABLE [dbo].[AddtionalElementCodeStopAccuracy] (
    [Id]          VARCHAR (30)    NOT NULL,
    [Code]        VARCHAR (10)    NULL,
    [ValueInTMU]  DECIMAL (18, 4) NULL,
    [Description] VARCHAR (250)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

