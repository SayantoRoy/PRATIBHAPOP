CREATE TABLE [dbo].[PayRegisterSignatoryField] (
    [Id]        INT             IDENTITY (1, 1) NOT NULL,
    [PlantId]   VARCHAR (10)    NULL,
    [Sequence]  DECIMAL (18, 2) NULL,
    [FieldName] VARCHAR (20)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PayRegisterSignatoryField_PlantId] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

