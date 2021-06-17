CREATE TABLE [SCS].[MailReceiver] (
    [Id]                 VARCHAR (10)  NOT NULL,
    [CompanyGroupId]     VARCHAR (10)  NOT NULL,
    [Name]               VARCHAR (50)  NOT NULL,
    [Remarks]            VARCHAR (250) NULL,
    [Active]             BIT           NOT NULL,
    [AddedBy]            VARCHAR (30)  NOT NULL,
    [AddedDate]          DATETIME      NOT NULL,
    [AddedFromIP]        VARCHAR (15)  NOT NULL,
    [UpdatedBy]          VARCHAR (30)  NULL,
    [UpdatedDate]        DATETIME      NULL,
    [UpdatedFromIP]      VARCHAR (15)  NULL,
    [MailReceipientType] VARCHAR (30)  NULL,
    CONSTRAINT [PK_MailReceiver] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MailReceiver_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

