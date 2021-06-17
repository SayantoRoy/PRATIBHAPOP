﻿CREATE TABLE [HKP].[CompanyGroupSOPCategory] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [SOPCategoryId]  VARCHAR (10) NOT NULL,
    [Active]         BIT          NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupSOPCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupSOPCategory_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupSOPCategory_SOPCategory] FOREIGN KEY ([SOPCategoryId]) REFERENCES [HKP].[SOPCategory] ([Id])
);

