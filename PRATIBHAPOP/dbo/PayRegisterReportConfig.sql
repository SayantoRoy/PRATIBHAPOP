CREATE TABLE [dbo].[PayRegisterReportConfig] (
    [Id]         INT          IDENTITY (1, 1) NOT NULL,
    [FieldName]  VARCHAR (50) NULL,
    [Applicable] BIT          NULL,
    [PlantId]    VARCHAR (10) NULL,
    CONSTRAINT [PK_PayRegisterReportConfig] PRIMARY KEY CLUSTERED ([Id] ASC)
);

