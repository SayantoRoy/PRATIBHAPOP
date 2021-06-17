CREATE TABLE [SEC].[UserAccessPlant] (
    [Id]             VARCHAR (50) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [CompanyId]      VARCHAR (10) NOT NULL,
    [UserId]         VARCHAR (10) NOT NULL,
    [PlantId]        VARCHAR (10) NULL,
    [Active]         BIT          NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_UserAccessPlant] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserAccessPlant_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_UserAccessPlant_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_UserAccessPlant_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_UserAccessPlant_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

