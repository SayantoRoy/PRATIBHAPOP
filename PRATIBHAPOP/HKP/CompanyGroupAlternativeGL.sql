CREATE TABLE [HKP].[CompanyGroupAlternativeGL] (
    [Id]              VARCHAR (10) NOT NULL,
    [CompanyGroupId]  VARCHAR (10) NOT NULL,
    [AlternativeGLId] VARCHAR (10) NOT NULL,
    [Active]          BIT          NOT NULL,
    [Archive]         BIT          NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupAlternativeGL] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupAlternativeGL_AlternativeGL] FOREIGN KEY ([AlternativeGLId]) REFERENCES [HKP].[AlternativeGL] ([Id]),
    CONSTRAINT [FK_CompanyGroupAlternativeGL_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

