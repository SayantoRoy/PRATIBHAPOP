CREATE TABLE [MMS].[PrerecruitmentUrl] (
    [Id]             VARCHAR (4)   NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [CompanyId]      VARCHAR (10)  NULL,
    [PlantId]        VARCHAR (10)  NULL,
    [Url]            VARCHAR (150) NULL,
    [Remarks]        VARCHAR (250) NULL,
    [Active]         BIT           NOT NULL,
    [Archive]        BIT           NOT NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_PrerecruitmentUrl] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PrerecruitmentUrl_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_PrerecruitmentUrl_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PrerecruitmentUrl_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

