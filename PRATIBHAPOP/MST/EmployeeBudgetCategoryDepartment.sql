CREATE TABLE [MST].[EmployeeBudgetCategoryDepartment] (
    [Id]                       VARCHAR (10) NOT NULL,
    [EmployeeBudgetCategoryId] VARCHAR (10) NOT NULL,
    [DepartmentId]             VARCHAR (10) NOT NULL,
    [CompanyGroupId]           VARCHAR (10) NOT NULL,
    [AddedBy]                  VARCHAR (30) NOT NULL,
    [AddedDate]                DATETIME     NOT NULL,
    [AddedFromIP]              VARCHAR (15) NOT NULL,
    [UpdatedBy]                VARCHAR (30) NULL,
    [UpdatedDate]              DATETIME     NULL,
    [UpdatedFromIP]            VARCHAR (15) NULL,
    CONSTRAINT [PK_EmployeeBudgetCategoryDepartment] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeBudgetCategoryDepartment_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_EmployeeBudgetCategoryDepartment_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [ORG].[Department] ([Id]),
    CONSTRAINT [FK_EmployeeBudgetCategoryDepartment_EmployeeBudgetCategory] FOREIGN KEY ([EmployeeBudgetCategoryId]) REFERENCES [HKP].[EmployeeBudgetCategory] ([Id])
);

