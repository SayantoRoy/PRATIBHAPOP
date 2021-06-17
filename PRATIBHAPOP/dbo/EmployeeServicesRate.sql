CREATE TABLE [dbo].[EmployeeServicesRate] (
    [Id]                        VARCHAR (20)    NOT NULL,
    [EffectiveDate]             DATETIME        NOT NULL,
    [Rate]                      DECIMAL (18, 2) NOT NULL,
    [Remarks]                   VARCHAR (250)   NULL,
    [AddedBy]                   VARCHAR (30)    NOT NULL,
    [AddedDate]                 DATETIME        NOT NULL,
    [AddedFromIP]               VARCHAR (15)    NOT NULL,
    [UpdatedBy]                 VARCHAR (30)    NULL,
    [UpdatedDate]               DATETIME        NULL,
    [UpdatedFromIP]             VARCHAR (15)    NULL,
    [NonChargeableGLCode]       VARCHAR (30)    NULL,
    [EmployeeServiceCategoryId] VARCHAR (20)    NOT NULL,
    CONSTRAINT [PK_EmployeeServicesRate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeServicesRate_Category] FOREIGN KEY ([EmployeeServiceCategoryId]) REFERENCES [dbo].[EmpServiceCategory] ([Id])
);

