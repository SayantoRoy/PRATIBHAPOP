CREATE TABLE [MST].[CompanyGroupMenuMaster] (
    [Id]             VARCHAR (30) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [ModuleId]       VARCHAR (20) NOT NULL,
    [MenuMasterId]   VARCHAR (20) NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupMenuMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupMenuMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupMenuMaster_MenuMaster] FOREIGN KEY ([MenuMasterId]) REFERENCES [MST].[MenuMaster] ([Id]),
    CONSTRAINT [FK_CompanyGroupMenuMaster_Module] FOREIGN KEY ([ModuleId]) REFERENCES [MMS].[Module] ([Id])
);

