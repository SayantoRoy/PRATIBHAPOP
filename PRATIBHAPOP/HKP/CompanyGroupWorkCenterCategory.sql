CREATE TABLE [HKP].[CompanyGroupWorkCenterCategory] (
    [Id]                   VARCHAR (10) NOT NULL,
    [CompanyGroupId]       VARCHAR (10) NOT NULL,
    [WorkCenterCategoryId] VARCHAR (10) NOT NULL,
    [Active]               BIT          NOT NULL,
    [Archive]              BIT          NOT NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupWorkCenterCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupWorkCenterCategory_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupWorkCenterCategory_WorkCenterCategory] FOREIGN KEY ([WorkCenterCategoryId]) REFERENCES [HKP].[WorkCenterCategory] ([Id])
);

