CREATE TABLE [HKP].[CompanyGroupWiseUOM] (
    [Id]             VARCHAR (10) NOT NULL,
    [UOMId]          VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [Active]         BIT          NOT NULL,
    [Archive]        BIT          NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupWiseUOM] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupWiseUOM_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupWiseUOM_UnitOfMeasurement] FOREIGN KEY ([UOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

