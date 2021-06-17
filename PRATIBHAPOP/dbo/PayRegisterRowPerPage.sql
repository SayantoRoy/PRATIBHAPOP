CREATE TABLE [dbo].[PayRegisterRowPerPage] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [PlantId]             VARCHAR (10)  NULL,
    [Setting]             VARCHAR (100) NULL,
    [NumberOfRowsPerPage] INT           NULL,
    CONSTRAINT [PK_PayRegisterRowPerPage] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__PayRegist__Plant__17C4E8D4] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

