CREATE TABLE [dbo].[AddtionalElementCodeHandlingFactor] (
    [Id]                 VARCHAR (30)    NOT NULL,
    [Code]               VARCHAR (10)    NULL,
    [DegreeOfDifficulty] VARCHAR (20)    NULL,
    [AdditionRate]       DECIMAL (18, 4) NULL,
    [Description]        VARCHAR (250)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

