﻿CREATE TABLE [TRN].[Inquiry] (
    [Id]                       VARCHAR (10) NOT NULL,
    [EntityId]                 VARCHAR (10) NOT NULL,
    [BuyerDepartmentId]        VARCHAR (10) NULL,
    [BuyerDivisionId]          VARCHAR (10) NULL,
    [NoOfItems]                INT          NULL,
    [Quantity]                 INT          NULL,
    [AddedBy]                  VARCHAR (30) NOT NULL,
    [AddedDate]                DATETIME     NOT NULL,
    [AddedFromIP]              VARCHAR (15) NOT NULL,
    [UpdatedBy]                VARCHAR (30) NULL,
    [UpdatedDate]              DATETIME     NULL,
    [UpdatedFromIP]            VARCHAR (15) NULL,
    [EmployeeId]               VARCHAR (30) NULL,
    [ResponsiblePersonId]      VARCHAR (30) NULL,
    [ProductionProcessGroupId] VARCHAR (10) NULL,
    [BuyerMasterId]            VARCHAR (10) NOT NULL,
    [BuyerActivityId]          VARCHAR (10) NOT NULL,
    CONSTRAINT [PK_Inquiry] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Inquiry_BuyerDepartment] FOREIGN KEY ([BuyerDepartmentId]) REFERENCES [HKP].[BuyerDepartment] ([Id]),
    CONSTRAINT [FK_Inquiry_BuyerDivision] FOREIGN KEY ([BuyerDivisionId]) REFERENCES [HKP].[BuyerDivision] ([Id]),
    CONSTRAINT [FK_Inquiry_BuyerMaster] FOREIGN KEY ([BuyerMasterId]) REFERENCES [MST].[BuyerMaster] ([Id]),
    CONSTRAINT [FK_Inquiry_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_Inquiry_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_Inquiry_OrderActivity] FOREIGN KEY ([BuyerActivityId]) REFERENCES [SCS].[OrderActivity] ([Id]),
    CONSTRAINT [FK_Inquiry_ProductionProcessGroup] FOREIGN KEY ([ProductionProcessGroupId]) REFERENCES [HKP].[ProductionProcessGroup] ([Id]),
    CONSTRAINT [FK_Inquiry_ResponsiblePerson_EmployeeInformation] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);
