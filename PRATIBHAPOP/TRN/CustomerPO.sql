CREATE TABLE [TRN].[CustomerPO] (
    [Id]             VARCHAR (20)  NOT NULL,
    [PONumber]       VARCHAR (100) NULL,
    [CustomerId]     VARCHAR (10)  NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [CompanyId]      VARCHAR (10)  NOT NULL,
    [MasterOrderId]  VARCHAR (10)  NOT NULL,
    [PODate]         DATE          NULL,
    [Active]         BIT           NOT NULL,
    [Archive]        BIT           NOT NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_CustomerPO] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CustomerPO_CompanyGroupId] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CustomerPO_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CustomerPO_PartyId] FOREIGN KEY ([CustomerId]) REFERENCES [HKP].[Party] ([Id])
);

