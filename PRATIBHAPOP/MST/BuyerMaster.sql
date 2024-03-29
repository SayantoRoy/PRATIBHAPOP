﻿CREATE TABLE [MST].[BuyerMaster] (
    [Id]                       VARCHAR (10) NOT NULL,
    [CompanyGroupId]           VARCHAR (10) NOT NULL,
    [BuyerId]                  VARCHAR (10) NOT NULL,
    [BuyerDepartmentId]        VARCHAR (10) NULL,
    [BuyerDivisionId]          VARCHAR (10) NULL,
    [IsAllAssign]              BIT          NOT NULL,
    [AddedBy]                  VARCHAR (30) NOT NULL,
    [AddedDate]                DATETIME     NOT NULL,
    [AddedFromIP]              VARCHAR (15) NOT NULL,
    [UpdatedBy]                VARCHAR (30) NULL,
    [UpdatedDate]              DATETIME     NULL,
    [UpdatedFromIP]            VARCHAR (15) NULL,
    [UserName]                 VARCHAR (50) NULL,
    [RepeatOrderLeadTime]      VARCHAR (50) NULL,
    [RepeatProductionLeadTime] VARCHAR (50) NULL,
    [NormalOrderLeadTime]      VARCHAR (50) NULL,
    [NormalProductionLeadTime] VARCHAR (50) NULL,
    [TaskTemplateMasterId]     VARCHAR (30) NULL,
    [CostingCreatedBy]         VARCHAR (30) NULL,
    [CostingCheckedBy]         VARCHAR (30) NULL,
    [CostingApprovedBy]        VARCHAR (30) NULL,
    CONSTRAINT [PK_BuyerMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CostingApprovedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([CostingCheckedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([CostingCreatedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_BuyerMaster_Buyer] FOREIGN KEY ([BuyerId]) REFERENCES [HKP].[Buyer] ([Id]),
    CONSTRAINT [FK_BuyerMaster_BuyerDepartment] FOREIGN KEY ([BuyerDepartmentId]) REFERENCES [HKP].[BuyerDepartment] ([Id]),
    CONSTRAINT [FK_BuyerMaster_BuyerDivision] FOREIGN KEY ([BuyerDivisionId]) REFERENCES [HKP].[BuyerDivision] ([Id]),
    CONSTRAINT [FK_BuyerMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_BuyerMaster_TaskTemplateMaster] FOREIGN KEY ([TaskTemplateMasterId]) REFERENCES [dbo].[TaskTemplateMaster] ([Id])
);

