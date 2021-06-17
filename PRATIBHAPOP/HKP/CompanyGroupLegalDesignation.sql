CREATE TABLE [HKP].[CompanyGroupLegalDesignation] (
    [Id]                 VARCHAR (10) NOT NULL,
    [CompanyGroupId]     VARCHAR (10) NOT NULL,
    [LegalDesignationId] VARCHAR (10) NOT NULL,
    [Active]             BIT          NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupGivenDesignation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupGivenDesignation_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupGivenDesignation_GivenDesignation] FOREIGN KEY ([LegalDesignationId]) REFERENCES [HKP].[LegalDesignation] ([Id])
);

