CREATE TABLE [SCS].[LegalSalaryGradeHead] (
    [Id]                 NVARCHAR (10)   NOT NULL,
    [LegalSalaryGradeId] VARCHAR (10)    NOT NULL,
    [SalaryHeadId]       VARCHAR (30)    NOT NULL,
    [Sequence]           DECIMAL (18, 2) CONSTRAINT [DF__LegalSala__Seque__0ABE5CC3] DEFAULT ((0)) NOT NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    CONSTRAINT [PK_LegalSalaryGradeHead] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LegalSalaryGradeHead_LegalSalaryGrade] FOREIGN KEY ([SalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_LegalSalaryGradeHead_LegalSalaryGradeHead] FOREIGN KEY ([LegalSalaryGradeId]) REFERENCES [SCS].[LegalSalaryGrade] ([Id])
);

