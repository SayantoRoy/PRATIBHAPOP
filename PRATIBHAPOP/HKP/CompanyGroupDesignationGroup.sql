CREATE TABLE [HKP].[CompanyGroupDesignationGroup] (
    [Id]                 VARCHAR (10) NOT NULL,
    [CompanyGroupId]     VARCHAR (10) NULL,
    [DesignationGroupId] VARCHAR (10) NULL,
    [Active]             BIT          NOT NULL,
    [Archive]            BIT          NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupDesignationGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupDesignationGroup_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupDesignationGroup_DesignationGroup] FOREIGN KEY ([DesignationGroupId]) REFERENCES [HKP].[DesignationGroup] ([Id])
);

