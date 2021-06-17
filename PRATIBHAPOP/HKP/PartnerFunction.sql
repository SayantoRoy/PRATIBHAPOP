CREATE TABLE [HKP].[PartnerFunction] (
    [Id]             VARCHAR (10)    NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NULL,
    [Sequence]       DECIMAL (18, 4) NOT NULL,
    [Code]           VARCHAR (10)    NULL,
    [ShortName]      VARCHAR (15)    NULL,
    [StandardName]   VARCHAR (50)    NULL,
    [UserName]       VARCHAR (50)    NULL,
    [AccountType]    VARCHAR (15)    NOT NULL,
    [AssignmentType] VARCHAR (15)    NULL,
    [Description]    VARCHAR (250)   NULL,
    [Remarks]        VARCHAR (250)   NULL,
    [Active]         BIT             NOT NULL,
    [Archive]        BIT             NOT NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_PartnerFunction] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PartnerFunction_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

