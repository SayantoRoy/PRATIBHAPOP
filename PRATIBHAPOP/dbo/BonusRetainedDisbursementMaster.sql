CREATE TABLE [dbo].[BonusRetainedDisbursementMaster] (
    [Id]               VARCHAR (50)  NOT NULL,
    [DisbursementDate] DATE          NULL,
    [PaymentDate]      DATE          NULL,
    [Description]      VARCHAR (150) NULL,
    [CompanyGroupId]   VARCHAR (10)  NULL,
    [PlantId]          VARCHAR (10)  NULL,
    [AddedBy]          VARCHAR (100) NOT NULL,
    [DateAdded]        DATETIME      NOT NULL,
    [UpdatedBy]        VARCHAR (100) NULL,
    [DateUpdated]      DATETIME      NULL,
    CONSTRAINT [PK_BonusRetainedDisbursement] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BonusRetainedDisbursementMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_BonusRetainedDisbursementMaster_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

