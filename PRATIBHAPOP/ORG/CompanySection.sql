CREATE TABLE [ORG].[CompanySection] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [CompanyId]      VARCHAR (10) NOT NULL,
    [SectionId]      VARCHAR (10) NOT NULL,
    [Archive]        BIT          NOT NULL,
    [Active]         BIT          NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanySection] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanySection_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CompanySection_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanySection_Section] FOREIGN KEY ([SectionId]) REFERENCES [ORG].[Section] ([Id])
);

