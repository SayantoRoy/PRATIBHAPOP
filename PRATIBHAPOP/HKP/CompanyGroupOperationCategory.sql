CREATE TABLE [HKP].[CompanyGroupOperationCategory] (
    [Id]                  VARCHAR (10) NOT NULL,
    [OperationCategoryId] VARCHAR (10) NOT NULL,
    [CompanyGroupId]      VARCHAR (10) CONSTRAINT [DF_CompanyGroupOperationCategory_CompanyGroupId] DEFAULT ((1)) NOT NULL,
    [Active]              BIT          NOT NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupOperationCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupOperationCategory_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupOperationCategory_OperationCategory] FOREIGN KEY ([OperationCategoryId]) REFERENCES [HKP].[OperationCategory] ([Id])
);

