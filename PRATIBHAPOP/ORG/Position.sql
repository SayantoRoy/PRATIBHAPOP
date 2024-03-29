﻿CREATE TABLE [ORG].[Position] (
    [Id]                       VARCHAR (10)  NOT NULL,
    [CompanyGroupId]           VARCHAR (10)  NOT NULL,
    [DivisionId]               VARCHAR (10)  NULL,
    [SubDivisionId]            VARCHAR (10)  NULL,
    [DesignationId]            VARCHAR (10)  NOT NULL,
    [DepartmentId]             VARCHAR (10)  NULL,
    [SectionId]                VARCHAR (10)  NULL,
    [SubSectionId]             VARCHAR (10)  NULL,
    [UserName]                 VARCHAR (100) NOT NULL,
    [Code]                     VARCHAR (20)  NULL,
    [OldRefCode]               VARCHAR (10)  NULL,
    [Activity]                 VARCHAR (200) NULL,
    [PaymentLink]              VARCHAR (20)  NULL,
    [Description]              VARCHAR (250) NULL,
    [Remarks]                  VARCHAR (250) NULL,
    [Active]                   BIT           NOT NULL,
    [Archive]                  BIT           NOT NULL,
    [IsHandoverDays]           BIT           NOT NULL,
    [HandoverDays]             TINYINT       NOT NULL,
    [IsDirect]                 BIT           NOT NULL,
    [AddedBy]                  VARCHAR (30)  NOT NULL,
    [AddedDate]                DATETIME      NOT NULL,
    [AddedFromIP]              VARCHAR (15)  NOT NULL,
    [UpdatedBy]                VARCHAR (30)  NULL,
    [UpdatedDate]              DATETIME      NULL,
    [UpdatedFromIP]            VARCHAR (15)  NULL,
    [TaskManagementApplicable] BIT           DEFAULT ((0)) NOT NULL,
    [UserDefineGroup1]         VARCHAR (50)  NULL,
    [UserDefineGroup2]         VARCHAR (50)  NULL,
    [UserDefineGroup3]         VARCHAR (50)  NULL,
    [UserDefineGroup4]         VARCHAR (50)  NULL,
    [DirectManpowerCost]       BIT           DEFAULT ((0)) NOT NULL,
    [UserDefineGroup5]         VARCHAR (50)  NULL,
    [UserDefineGroup6]         VARCHAR (50)  NULL,
    CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Position_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_Position_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [ORG].[Department] ([Id]),
    CONSTRAINT [FK_Position_Designation] FOREIGN KEY ([DesignationId]) REFERENCES [HKP].[Designation] ([Id]),
    CONSTRAINT [FK_Position_Division] FOREIGN KEY ([DivisionId]) REFERENCES [ORG].[Division] ([Id]),
    CONSTRAINT [FK_Position_Section] FOREIGN KEY ([SectionId]) REFERENCES [ORG].[Section] ([Id]),
    CONSTRAINT [FK_Position_SubDivision] FOREIGN KEY ([SubDivisionId]) REFERENCES [ORG].[SubDivision] ([Id]),
    CONSTRAINT [FK_Position_SubSection] FOREIGN KEY ([SubSectionId]) REFERENCES [ORG].[SubSection] ([Id])
);

