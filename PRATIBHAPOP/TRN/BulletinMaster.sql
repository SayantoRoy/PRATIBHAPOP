CREATE TABLE [TRN].[BulletinMaster] (
    [Id]             VARCHAR (30)    NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NULL,
    [CompanyId]      VARCHAR (10)    NULL,
    [Description]    VARCHAR (100)   NULL,
    [WorkingHour]    DECIMAL (18, 3) NULL,
    [Sequence]       DECIMAL (18)    NULL,
    [Archive]        BIT             NOT NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    [BuyerStyleId]   VARCHAR (10)    NOT NULL,
    CONSTRAINT [PK_BulletinMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BulletinMaster_BuyerStyle] FOREIGN KEY ([BuyerStyleId]) REFERENCES [HKP].[BuyerStyle] ([Id]),
    CONSTRAINT [FK_BulletinMaster_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_BulletinMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

