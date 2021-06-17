﻿CREATE TABLE [dbo].[EmployeeFixedServiceMaster] (
    [Id]              VARCHAR (30) NOT NULL,
    [SalaryHeadId]    VARCHAR (30) NOT NULL,
    [ServicComponent] VARCHAR (50) NOT NULL,
    [DurationType]    VARCHAR (30) NOT NULL,
    [CompanyGroupId]  VARCHAR (10) NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([SalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    FOREIGN KEY ([SalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    FOREIGN KEY ([SalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

