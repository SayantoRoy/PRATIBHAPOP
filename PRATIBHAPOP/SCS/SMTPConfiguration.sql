CREATE TABLE [SCS].[SMTPConfiguration] (
    [Id]                VARCHAR (10)  NOT NULL,
    [CompanyGroupId]    VARCHAR (10)  NOT NULL,
    [CompanyId]         VARCHAR (10)  NULL,
    [SenderSystemName]  VARCHAR (30)  NOT NULL,
    [SenderSystemEmail] VARCHAR (30)  NOT NULL,
    [Host]              VARCHAR (150) NOT NULL,
    [Port]              INT           NOT NULL,
    [MailingUserName]   VARCHAR (150) NOT NULL,
    [Password]          VARCHAR (150) NOT NULL,
    [WebDomain]         VARCHAR (100) NULL,
    [IsSSL]             BIT           NOT NULL,
    [AddedBy]           VARCHAR (30)  NOT NULL,
    [AddedDate]         DATETIME      NOT NULL,
    [AddedFromIP]       VARCHAR (15)  NOT NULL,
    [UpdatedBy]         VARCHAR (30)  NULL,
    [UpdatedDate]       DATETIME      NULL,
    [UpdatedFromIP]     VARCHAR (15)  NULL,
    CONSTRAINT [PK_SMTPConfiguration] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SMTPConfiguration_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_SMTPConfiguration_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

