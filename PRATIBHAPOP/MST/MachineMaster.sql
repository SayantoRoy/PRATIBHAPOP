﻿CREATE TABLE [MST].[MachineMaster] (
    [Id]                   VARCHAR (10)    NOT NULL,
    [CompanyGroupId]       VARCHAR (10)    NOT NULL,
    [MachineCategoryId]    VARCHAR (10)    NOT NULL,
    [MachineSubCategoryId] VARCHAR (10)    NOT NULL,
    [Sequence]             DECIMAL (18, 2) NOT NULL,
    [Code]                 VARCHAR (15)    NOT NULL,
    [ShortName]            VARCHAR (15)    NOT NULL,
    [StandardName]         VARCHAR (100)   NOT NULL,
    [UserName]             VARCHAR (100)   NOT NULL,
    [Description]          VARCHAR (250)   NULL,
    [Remarks]              VARCHAR (250)   NULL,
    [SkillId]              VARCHAR (10)    NOT NULL,
    [ProductionMachineQty] NUMERIC (18)    NOT NULL,
    [SampleMachineQty]     NUMERIC (18)    NOT NULL,
    [TrainingMachineQty]   NUMERIC (18)    NOT NULL,
    [RentMachineQty]       NUMERIC (18)    NOT NULL,
    [OtherMachineQty]      NUMERIC (18)    NOT NULL,
    [Active]               BIT             CONSTRAINT [DF_MachineMaster_Active] DEFAULT ('false') NOT NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    CONSTRAINT [PK_MachineMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MachineMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_MachineMaster_MachineCategory] FOREIGN KEY ([MachineCategoryId]) REFERENCES [HKP].[MachineCategory] ([Id]),
    CONSTRAINT [FK_MachineMaster_MachineSubCategory] FOREIGN KEY ([MachineSubCategoryId]) REFERENCES [HKP].[MachineSubCategory] ([Id]),
    CONSTRAINT [FK_MachineMaster_Skill1] FOREIGN KEY ([SkillId]) REFERENCES [HKP].[Skill] ([Id])
);

