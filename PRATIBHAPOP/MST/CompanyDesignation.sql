CREATE TABLE [MST].[CompanyDesignation] (
    [Id]                  NVARCHAR (10) NOT NULL,
    [CompanyGroupId]      VARCHAR (10)  NOT NULL,
    [CompanyId]           VARCHAR (10)  NOT NULL,
    [DesignationMasterId] VARCHAR (10)  NOT NULL,
    [Archive]             BIT           NOT NULL,
    [AddedBy]             VARCHAR (30)  NOT NULL,
    [AddedDate]           DATETIME      NULL,
    [AddedFromIP]         VARCHAR (15)  NOT NULL,
    [UpdatedBy]           VARCHAR (30)  NULL,
    [UpdatedDate]         DATETIME      NULL,
    [UpdatedFromIP]       VARCHAR (15)  NULL,
    CONSTRAINT [PK_CompanyDesignation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyDesignation_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CompanyDesignation_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyDesignation_DesignationMaster] FOREIGN KEY ([DesignationMasterId]) REFERENCES [MST].[DesignationMaster] ([Id])
);

