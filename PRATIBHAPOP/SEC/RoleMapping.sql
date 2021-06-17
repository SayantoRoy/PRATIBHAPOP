CREATE TABLE [SEC].[RoleMapping] (
    [Id]                     VARCHAR (10) NOT NULL,
    [CompanyGroupId]         VARCHAR (10) NOT NULL,
    [RoleId]                 VARCHAR (10) NOT NULL,
    [PositionStructureId]    VARCHAR (10) NULL,
    [ManPowerBudgetMasterId] VARCHAR (10) NULL,
    [Active]                 BIT          NOT NULL,
    [Archive]                BIT          CONSTRAINT [DF_RoleMapping_Archive] DEFAULT ((0)) NOT NULL,
    [AddedBy]                VARCHAR (30) NOT NULL,
    [AddedDate]              DATETIME     NOT NULL,
    [AddedFromIP]            VARCHAR (15) NOT NULL,
    [UpdatedBy]              VARCHAR (30) NULL,
    [UpdatedDate]            DATETIME     NULL,
    [UpdatedFromIP]          VARCHAR (15) NULL,
    CONSTRAINT [PK_RoleMapping] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RoleMapping_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_RoleMapping_ManpowerBudgetMaster] FOREIGN KEY ([ManPowerBudgetMasterId]) REFERENCES [MST].[ManpowerBudget] ([Id]),
    CONSTRAINT [FK_RoleMapping_PositionRelation] FOREIGN KEY ([PositionStructureId]) REFERENCES [ORG].[Position] ([Id]),
    CONSTRAINT [FK_RoleMapping_Role] FOREIGN KEY ([RoleId]) REFERENCES [SEC].[Role] ([Id])
);

