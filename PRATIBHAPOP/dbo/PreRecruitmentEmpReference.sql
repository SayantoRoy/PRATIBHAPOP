﻿CREATE TABLE [dbo].[PreRecruitmentEmpReference] (
    [SystemID]                 VARCHAR (30)  NOT NULL,
    [PreRecruitmentEmployeeId] VARCHAR (10)  NULL,
    [Ref1Name]                 VARCHAR (150) NULL,
    [Ref1EmployerName]         VARCHAR (150) NULL,
    [Ref1EmployerAddress]      VARCHAR (300) NULL,
    [Ref1Designation]          VARCHAR (100) NULL,
    [Ref1CellPhnNo]            VARCHAR (30)  NULL,
    [Ref1TelePhnNo]            VARCHAR (30)  NULL,
    [Ref1Email]                VARCHAR (50)  NULL,
    [Ref1Address]              VARCHAR (300) NULL,
    [Ref2Name]                 VARCHAR (150) NULL,
    [Ref2EmployerName]         VARCHAR (150) NULL,
    [Ref2EmployerAddress]      VARCHAR (300) NULL,
    [Ref2Designation]          VARCHAR (100) NULL,
    [Ref2CellPhnNo]            VARCHAR (30)  NULL,
    [Ref2TelePhnNo]            VARCHAR (30)  NULL,
    [Ref2Email]                VARCHAR (50)  NULL,
    [Ref2Address]              VARCHAR (300) NULL,
    [AddedBy]                  VARCHAR (30)  NULL,
    [AddedDate]                DATETIME      NULL,
    [AddedFromIP]              VARCHAR (15)  NULL,
    [UpdatedBy]                VARCHAR (30)  NULL,
    [UpdatedDate]              DATETIME      NULL,
    [UpdatedFromIP]            VARCHAR (15)  NULL,
    CONSTRAINT [PK_PreRecruitmentEmpReference] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_PreRecruitmentEmpReference_PreRecruitmentEmployee] FOREIGN KEY ([PreRecruitmentEmployeeId]) REFERENCES [dbo].[PreRecruitmentEmployee] ([Id])
);

