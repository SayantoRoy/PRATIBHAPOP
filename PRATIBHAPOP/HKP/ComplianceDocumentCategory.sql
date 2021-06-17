CREATE TABLE [HKP].[ComplianceDocumentCategory] (
    [Id]             VARCHAR (10)    NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [Sequence]       DECIMAL (18, 2) NOT NULL,
    [Code]           VARCHAR (10)    NOT NULL,
    [ShortName]      VARCHAR (15)    NOT NULL,
    [StandardName]   VARCHAR (100)   NOT NULL,
    [UserName]       VARCHAR (100)   NOT NULL,
    [Description]    VARCHAR (250)   NULL,
    [Remarks]        VARCHAR (250)   NULL,
    [Active]         BIT             NOT NULL,
    [Archive]        BIT             NOT NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_ComplianceDocumentCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ComplianceDocumentCategory_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

