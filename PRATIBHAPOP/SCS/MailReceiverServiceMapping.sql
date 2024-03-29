﻿CREATE TABLE [SCS].[MailReceiverServiceMapping] (
    [Id]                    INT            IDENTITY (1, 1) NOT NULL,
    [CompanyGroupId]        VARCHAR (10)   NOT NULL,
    [CompanyId]             VARCHAR (10)   NULL,
    [PlantId]               VARCHAR (10)   NULL,
    [MailReceiverId]        VARCHAR (10)   NOT NULL,
    [SenderName]            VARCHAR (50)   NULL,
    [SenderEmail]           VARCHAR (50)   NULL,
    [Subject]               VARCHAR (50)   NOT NULL,
    [MessageBody]           VARCHAR (5000) NOT NULL,
    [ServiceName]           VARCHAR (50)   NOT NULL,
    [Remarks]               VARCHAR (250)  NULL,
    [Active]                BIT            NOT NULL,
    [AddedBy]               VARCHAR (30)   NOT NULL,
    [AddedDate]             DATETIME       NOT NULL,
    [AddedFromIP]           VARCHAR (15)   NOT NULL,
    [UpdatedBy]             VARCHAR (30)   NULL,
    [UpdatedDate]           DATETIME       NULL,
    [UpdatedFromIP]         VARCHAR (15)   NULL,
    [IsSendMailIfEmptyData] BIT            NOT NULL,
    CONSTRAINT [PK_MailReceiverService] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MailReceiverService_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_MailReceiverService_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_MailReceiverService_MailReceiver] FOREIGN KEY ([MailReceiverId]) REFERENCES [SCS].[MailReceiver] ([Id]),
    CONSTRAINT [FK_MailReceiverService_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

