CREATE TABLE [SCS].[TestingStandard] (
    [Id]             VARCHAR (10)  NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [Code]           VARCHAR (10)  NOT NULL,
    [ShortName]      VARCHAR (15)  NOT NULL,
    [StandardName]   VARCHAR (50)  NOT NULL,
    [UserName]       VARCHAR (50)  NOT NULL,
    [Description]    VARCHAR (500) NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_TestingStandard] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TestingStandard_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

