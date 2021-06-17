CREATE TABLE [MST].[DesignationMaster] (
    [Id]                 VARCHAR (10) NOT NULL,
    [CompanyGroupId]     VARCHAR (10) NOT NULL,
    [DesignationGroupId] VARCHAR (10) NOT NULL,
    [DesignationId]      VARCHAR (10) NOT NULL,
    [EmployeeCategoryId] VARCHAR (10) NULL,
    [Code]               VARCHAR (15) NOT NULL,
    [UserName]           VARCHAR (50) NOT NULL,
    [Active]             BIT          NOT NULL,
    [Archive]            BIT          NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_DesignationMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DesignationMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_DesignationMaster_Designation] FOREIGN KEY ([DesignationId]) REFERENCES [HKP].[Designation] ([Id]),
    CONSTRAINT [FK_DesignationMaster_DesignationGroup] FOREIGN KEY ([DesignationGroupId]) REFERENCES [HKP].[DesignationGroup] ([Id]),
    CONSTRAINT [FK_DesignationMaster_EmployeeType] FOREIGN KEY ([EmployeeCategoryId]) REFERENCES [HKP].[EmployeeCategory] ([Id])
);

