CREATE TABLE [SCS].[Testing] (
    [Id]                VARCHAR (10)    NOT NULL,
    [CompanyGroupId]    VARCHAR (10)    NOT NULL,
    [TestingCategoryId] VARCHAR (10)    NOT NULL,
    [Sequence]          DECIMAL (18, 2) NOT NULL,
    [Code]              VARCHAR (10)    NOT NULL,
    [ShortName]         VARCHAR (15)    NOT NULL,
    [StandardName]      VARCHAR (50)    NOT NULL,
    [UserName]          VARCHAR (50)    NOT NULL,
    [Description]       VARCHAR (100)   NULL,
    [Remarks]           VARCHAR (150)   NULL,
    [Active]            BIT             NOT NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    CONSTRAINT [PK_Testing] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Testing_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_Testing_TestingCategory] FOREIGN KEY ([TestingCategoryId]) REFERENCES [HKP].[TestingCategory] ([Id])
);

