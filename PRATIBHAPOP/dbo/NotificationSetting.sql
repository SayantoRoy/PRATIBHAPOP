CREATE TABLE [dbo].[NotificationSetting] (
    [Id]                        VARCHAR (20) NOT NULL,
    [PlantId]                   VARCHAR (10) NULL,
    [BusinessFlow]              VARCHAR (50) NOT NULL,
    [NotificationAfterCreation] BIT          NOT NULL,
    [RequiredChecking]          BIT          NOT NULL,
    [NotificationAfterChecking] BIT          NOT NULL,
    [RequiredApproval]          BIT          NOT NULL,
    [NotificationAfterApproval] BIT          NOT NULL,
    [AddedBy]                   VARCHAR (30) NOT NULL,
    [AddedDate]                 DATETIME     NOT NULL,
    [AddedFromIP]               VARCHAR (15) NOT NULL,
    [UpdatedBy]                 VARCHAR (30) NULL,
    [UpdatedDate]               DATETIME     NULL,
    [UpdatedFromIP]             VARCHAR (15) NULL,
    CONSTRAINT [PK_NotificationSetting] PRIMARY KEY CLUSTERED ([Id] ASC)
);

