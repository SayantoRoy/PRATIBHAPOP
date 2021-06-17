CREATE TABLE [SCS].[MailReceiverDetail] (
    [Id]             INT          IDENTITY (1, 1) NOT NULL,
    [MailReceiverId] VARCHAR (10) NOT NULL,
    [UserId]         VARCHAR (10) NULL,
    [MailType]       VARCHAR (50) NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    [SourceType]     VARCHAR (20) CONSTRAINT [DF__MailRecei__Sourc__124B3B49] DEFAULT ('User') NOT NULL,
    [FullName]       VARCHAR (30) NULL,
    [Email]          VARCHAR (80) NULL,
    CONSTRAINT [PK_MailReceiverDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MailReceiverDetail_MailReceiver] FOREIGN KEY ([MailReceiverId]) REFERENCES [SCS].[MailReceiver] ([Id]),
    CONSTRAINT [FK_MailReceiverDetail_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

