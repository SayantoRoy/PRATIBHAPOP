CREATE TABLE [MST].[LegalSalaryStructureValue] (
    [Id]                     VARCHAR (10)    NOT NULL,
    [LegalSalaryStructureId] VARCHAR (10)    NOT NULL,
    [SalaryHeadId]           VARCHAR (30)    NOT NULL,
    [SalaryHeadValue]        DECIMAL (18, 2) NOT NULL,
    [AddedBy]                VARCHAR (30)    NOT NULL,
    [AddedDate]              DATETIME        NOT NULL,
    [AddedFromIP]            VARCHAR (15)    NOT NULL,
    [UpdatedBy]              VARCHAR (30)    NULL,
    [UpdatedDate]            DATETIME        NULL,
    [UpdatedFromIP]          VARCHAR (15)    NULL,
    CONSTRAINT [PK_LegalSalaryStructureValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LegalSalaryStructureValue_LegalSalaryStructure] FOREIGN KEY ([LegalSalaryStructureId]) REFERENCES [MST].[LegalSalaryStructure] ([Id]),
    CONSTRAINT [FK_LegalSalaryStructureValue_SalaryHead] FOREIGN KEY ([SalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

