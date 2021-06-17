CREATE TABLE [dbo].[GratuityPolicyMaster] (
    [Id]                VARCHAR (30) NOT NULL,
    [UserName]          VARCHAR (30) NOT NULL,
    [Active]            BIT          DEFAULT ((0)) NULL,
    [CompanyGroupId]    VARCHAR (10) NOT NULL,
    [plantId]           VARCHAR (10) NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    [IsRoudingSixMonth] BIT          DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([plantId]) REFERENCES [ORG].[Plant] ([Id])
);

