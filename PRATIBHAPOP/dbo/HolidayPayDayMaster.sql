CREATE TABLE [dbo].[HolidayPayDayMaster] (
    [Id]                VARCHAR (50) NOT NULL,
    [PolicyName]        VARCHAR (30) NOT NULL,
    [PolicyDescription] VARCHAR (30) NOT NULL,
    [IsActive]          BIT          NOT NULL,
    [PlantId]           VARCHAR (10) NOT NULL,
    [CompanyGroupId]    VARCHAR (10) NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

