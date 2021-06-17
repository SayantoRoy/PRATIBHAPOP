CREATE TABLE [HKP].[CompanyGroupProductionStatus] (
    [Id]                 VARCHAR (10) NOT NULL,
    [CompanyGroupId]     VARCHAR (10) NOT NULL,
    [ProductionStatusId] VARCHAR (10) NOT NULL,
    [Active]             BIT          NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupProductionStatus] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupProductionStatus_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupProductionStatus_ProductionStatus] FOREIGN KEY ([ProductionStatusId]) REFERENCES [HKP].[ProductionStatus] ([Id])
);

