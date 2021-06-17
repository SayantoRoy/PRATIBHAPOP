CREATE TABLE [ORG].[CompanyCostCenter] (
    [Id]            VARCHAR (10) NOT NULL,
    [CompanyId]     VARCHAR (10) NOT NULL,
    [CostCenterId]  VARCHAR (10) NOT NULL,
    [Active]        BIT          NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyCostCenter] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyCostCenter_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CompanyCostCenter_CostCenter] FOREIGN KEY ([CostCenterId]) REFERENCES [ORG].[CostCenter] ([Id])
);

