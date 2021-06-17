CREATE TABLE [SEC].[CredentialPolicy] (
    [Id]                          VARCHAR (10) NOT NULL,
    [CompanyGroupId]              VARCHAR (10) NOT NULL,
    [PwdExpAfterDay]              INT          CONSTRAINT [DF_CredentialPolicy_PwdExpDuration] DEFAULT ((0)) NOT NULL,
    [PwdExpAlertBeforeDay]        INT          CONSTRAINT [DF_CredentialPolicy_PwdExpAlert] DEFAULT ((0)) NOT NULL,
    [PwdCheckingFromLastHistory]  INT          CONSTRAINT [DF_CredentialPolicy_PwdCheckingFromLastHistory] DEFAULT ((0)) NOT NULL,
    [TwoFactorEnable]             BIT          NOT NULL,
    [PwdFailCount]                INT          CONSTRAINT [DF_CredentialPolicy_PwdFailCount] DEFAULT ((0)) NOT NULL,
    [AuthTokenFailCount]          INT          NOT NULL,
    [PwdLockTimeDifference]       INT          CONSTRAINT [DF_CredentialPolicy_PwdLockTimeDifference] DEFAULT ((0)) NOT NULL,
    [AuthTokenLockTimeDifference] INT          CONSTRAINT [DF_CredentialPolicy_AuthKeyLockTimeDifference] DEFAULT ((0)) NOT NULL,
    [AllowConcurrentUser]         BIT          NOT NULL,
    [Active]                      BIT          NOT NULL,
    [Archive]                     BIT          CONSTRAINT [DF_CredentialPolicy_ARCHIVE] DEFAULT ((0)) NOT NULL,
    [AddedBy]                     VARCHAR (30) NOT NULL,
    [AddedDate]                   DATETIME     NOT NULL,
    [AddedFromIP]                 VARCHAR (15) NOT NULL,
    [UpdatedBy]                   VARCHAR (30) NULL,
    [UpdatedDate]                 DATETIME     NULL,
    [UpdatedFromIP]               VARCHAR (15) NULL,
    CONSTRAINT [PK_CredentialPolicy] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CredentialPolicy_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

