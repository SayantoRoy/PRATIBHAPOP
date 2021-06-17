CREATE TABLE [SCS].[OrderActivity] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [ActivityName]   VARCHAR (30) NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    [UserName]       VARCHAR (50) NOT NULL,
    [ActivityType]   VARCHAR (20) NOT NULL,
    CONSTRAINT [PK_BuyerActivity] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BuyerActivity_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

