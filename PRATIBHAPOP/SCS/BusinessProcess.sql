CREATE TABLE [SCS].[BusinessProcess] (
    [Id]                  VARCHAR (10) NOT NULL,
    [CompanyGroupId]      VARCHAR (10) NOT NULL,
    [BusinessProcessName] VARCHAR (50) NOT NULL,
    [Type]                VARCHAR (50) NOT NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    [UserName]            VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_BusinessProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BusinessProcess_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

