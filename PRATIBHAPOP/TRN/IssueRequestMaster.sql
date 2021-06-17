CREATE TABLE [TRN].[IssueRequestMaster] (
    [Id]                 VARCHAR (10) NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    [Preparedby]         VARCHAR (30) NULL,
    [CheckedBy]          VARCHAR (30) NULL,
    [CheckedByStatus]    VARCHAR (30) NULL,
    [AuthorizedBy]       VARCHAR (30) NULL,
    [AuthorizedByStatus] VARCHAR (30) NULL,
    [CompanyGroupId]     VARCHAR (10) NULL,
    [CompanyId]          VARCHAR (10) NULL,
    [PlantId]            VARCHAR (10) NULL,
    [IssueSlipType]      VARCHAR (30) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_IssueRequestMasterCmpanyId] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [fk_IssueRequestMasterCompanyGroupId] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [fk_IssueRequestMasterPlntId] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

