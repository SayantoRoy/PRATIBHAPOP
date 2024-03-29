﻿CREATE TABLE [ORG].[CostCenter] (
    [Id]                      VARCHAR (10)    NOT NULL,
    [CostCenterCategoryId]    VARCHAR (10)    NOT NULL,
    [CostCenterSubCategoryId] VARCHAR (10)    NOT NULL,
    [Sequence]                DECIMAL (18, 2) NOT NULL,
    [Code]                    VARCHAR (10)    NOT NULL,
    [UserName]                VARCHAR (50)    NOT NULL,
    [StandardName]            VARCHAR (50)    NULL,
    [Description]             VARCHAR (250)   NULL,
    [Remarks]                 VARCHAR (250)   NULL,
    [Active]                  BIT             NOT NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    [DepartmentId]            VARCHAR (10)    NULL,
    [UnitId]                  VARCHAR (10)    NULL,
    [LineId]                  VARCHAR (10)    NULL,
    [EmployeeId]              VARCHAR (30)    NULL,
    [CostType]                VARCHAR (20)    NULL,
    CONSTRAINT [PK_CostCenter] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CostCenter_CostCenterCategory] FOREIGN KEY ([CostCenterCategoryId]) REFERENCES [ORG].[CostCenterCategory] ([Id]),
    CONSTRAINT [FK_CostCenter_CostCenterSubCategory] FOREIGN KEY ([CostCenterSubCategoryId]) REFERENCES [ORG].[CostCenterSubCategory] ([Id]),
    CONSTRAINT [FK_CostCenter_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [ORG].[Department] ([Id]),
    CONSTRAINT [FK_CostCenter_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_CostCenter_Line] FOREIGN KEY ([LineId]) REFERENCES [ORG].[Line] ([Id]),
    CONSTRAINT [FK_CostCenter_Unit] FOREIGN KEY ([UnitId]) REFERENCES [ORG].[Unit] ([Id])
);

