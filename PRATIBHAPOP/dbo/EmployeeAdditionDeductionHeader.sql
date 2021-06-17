﻿CREATE TABLE [dbo].[EmployeeAdditionDeductionHeader] (
    [Id]                      VARCHAR (30)    NOT NULL,
    [ShortName]               VARCHAR (15)    NOT NULL,
    [StandardName]            VARCHAR (50)    NOT NULL,
    [UserName]                VARCHAR (50)    NOT NULL,
    [Remarks]                 VARCHAR (250)   NULL,
    [Sequence]                DECIMAL (18, 2) NOT NULL,
    [Type]                    VARCHAR (30)    NOT NULL,
    [Category]                VARCHAR (30)    NOT NULL,
    [SubCategory]             VARCHAR (30)    NOT NULL,
    [PolicyRef]               VARCHAR (50)    NULL,
    [CalculationHeadId]       VARCHAR (30)    NULL,
    [isFixed]                 BIT             NOT NULL,
    [isPercentage]            BIT             NOT NULL,
    [AdditionDeductionHeadId] VARCHAR (30)    NOT NULL,
    [Amount]                  DECIMAL (18, 2) NOT NULL,
    [Period]                  VARCHAR (30)    NOT NULL,
    [Frequency]               DECIMAL (18, 2) NOT NULL,
    [EffectiveDate]           DATETIME        NOT NULL,
    [ResponsiblePersonId]     VARCHAR (30)    NOT NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    CONSTRAINT [PK_EmployeeAdditionDeductionHeader] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeAdditionDeductionHeader_AdditionDeductionHeadId] FOREIGN KEY ([AdditionDeductionHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_EmployeeAdditionDeductionHeader_CalculationHeadId] FOREIGN KEY ([CalculationHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_EmployeeAdditionDeductionHeader_ResponsiblePersonId] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);
