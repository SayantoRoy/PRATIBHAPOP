CREATE TABLE [dbo].[BonusRetainedDisbursementDetail] (
    [Id]                                VARCHAR (50)    NOT NULL,
    [BonusRetainedDisbursementMasterId] VARCHAR (50)    NULL,
    [EmpSystemId]                       VARCHAR (30)    NULL,
    [Amount]                            DECIMAL (18, 2) NULL,
    [PlantId]                           VARCHAR (10)    NULL,
    [IsDisbursed]                       BIT             NULL,
    [IsApproved]                        BIT             NULL,
    [AddedBy]                           VARCHAR (100)   NOT NULL,
    [DateAdded]                         DATETIME        NOT NULL,
    [UpdatedBy]                         VARCHAR (100)   NULL,
    [DateUpdated]                       DATETIME        NULL,
    CONSTRAINT [PK_BonusRetainedDisbursementDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BonusRetainedDisbursementDetail_BonusRetainedDisbursementMaster] FOREIGN KEY ([BonusRetainedDisbursementMasterId]) REFERENCES [dbo].[BonusRetainedDisbursementMaster] ([Id]),
    CONSTRAINT [FK_BonusRetainedDisbursementDetail_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_BonusRetainedDisbursementDetail_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

