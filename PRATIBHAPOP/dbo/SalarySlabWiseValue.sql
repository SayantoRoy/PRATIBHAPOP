CREATE TABLE [dbo].[SalarySlabWiseValue] (
    [Id]                      VARCHAR (10)    NOT NULL,
    [PlantId]                 VARCHAR (10)    NOT NULL,
    [ValueSalaryHeadId]       VARCHAR (30)    NOT NULL,
    [ValueSalaryHeadAmount]   DECIMAL (18, 2) NOT NULL,
    [BaseSalaryHeadId]        VARCHAR (30)    NOT NULL,
    [BaseSalaryHeadMinAmount] DECIMAL (18, 2) NOT NULL,
    [BaseSalaryHeadMaxAmount] DECIMAL (18, 2) NOT NULL,
    [Active]                  BIT             NOT NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    CONSTRAINT [PK_SalarySlabWiseValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalarySlabWiseValue_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalarySlabWiseValue_SalaryHead] FOREIGN KEY ([BaseSalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_SalarySlabWiseValue_SalaryHead1] FOREIGN KEY ([ValueSalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

