CREATE TABLE [dbo].[EmployeeDisciplinaryActionDetails] (
    [Id]                                 VARCHAR (30) NOT NULL,
    [EmployeeDisciplinaryActionId]       VARCHAR (10) NOT NULL,
    [LetterFormetId]                     VARCHAR (30) NOT NULL,
    [NextLetterDueDate]                  DATE         NULL,
    [LetterIssueDate]                    DATE         NULL,
    [DisciplinaryActionSettingDetailsId] VARCHAR (30) NULL,
    [DisciplinaryActionCategoryId]       VARCHAR (10) NULL,
    [AddedBy]                            VARCHAR (30) NULL,
    [AddedDate]                          DATETIME     NULL,
    [AddedFromIP]                        VARCHAR (15) NULL,
    [UpdatedBy]                          VARCHAR (30) NULL,
    [UpdatedDate]                        DATETIME     NULL,
    [UpdatedFromIP]                      VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([EmployeeDisciplinaryActionId]) REFERENCES [HKP].[EmployeeDisciplinaryAction] ([Id]),
    FOREIGN KEY ([EmployeeDisciplinaryActionId]) REFERENCES [HKP].[EmployeeDisciplinaryAction] ([Id]),
    FOREIGN KEY ([LetterFormetId]) REFERENCES [dbo].[DisciplinaryActionSettingChild] ([Id]),
    CONSTRAINT [FK__EmployeeD__Disci__6D3A7D82] FOREIGN KEY ([DisciplinaryActionCategoryId]) REFERENCES [HKP].[DisciplinaryActionCategory] ([Id]),
    CONSTRAINT [FK__EmployeeD__Disci__721F2E30] FOREIGN KEY ([DisciplinaryActionCategoryId]) REFERENCES [HKP].[DisciplinaryActionCategory] ([Id]),
    CONSTRAINT [FK__EmployeeD__Disci__73135269] FOREIGN KEY ([DisciplinaryActionCategoryId]) REFERENCES [HKP].[DisciplinaryActionCategory] ([Id])
);

