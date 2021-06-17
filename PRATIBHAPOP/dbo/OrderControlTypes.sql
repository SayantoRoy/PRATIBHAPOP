﻿CREATE TABLE [dbo].[OrderControlTypes] (
    [Id]                  VARCHAR (30)  NOT NULL,
    [ControlType]         VARCHAR (100) NULL,
    [ControlTypeDesc]     VARCHAR (250) NULL,
    [Form]                VARCHAR (100) NULL,
    [Days]                INT           NULL,
    [LagDays]             INT           NULL,
    [ResponsiblePersonId] VARCHAR (30)  NULL,
    [DependentDate]       VARCHAR (100) NULL,
    [CompanyGroupId]      VARCHAR (10)  NULL,
    [AddedBy]             VARCHAR (30)  NOT NULL,
    [AddedDate]           DATETIME      NOT NULL,
    [AddedFromIP]         VARCHAR (15)  NOT NULL,
    [UpdatedBy]           VARCHAR (30)  NULL,
    [UpdatedDate]         DATETIME      NULL,
    [UpdatedFromIP]       VARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

