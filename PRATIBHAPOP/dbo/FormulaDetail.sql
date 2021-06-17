CREATE TABLE [dbo].[FormulaDetail] (
    [Id]                    VARCHAR (30)    NOT NULL,
    [Sequence]              DECIMAL (18, 2) NULL,
    [NoticePeriodSettingId] VARCHAR (30)    NULL,
    [SalaryHeadID]          VARCHAR (30)    NULL,
    [Component]             VARCHAR (50)    NULL,
    CONSTRAINT [PK_NoticePeriodFormulaDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_NoticePeriodFormulaDetail_NoticePeriodSetting] FOREIGN KEY ([NoticePeriodSettingId]) REFERENCES [dbo].[NoticePeriodSetting] ([Id]),
    CONSTRAINT [FK_NoticePeriodFormulaDetail_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

