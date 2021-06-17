CREATE TABLE [dbo].[SalaryDisbursementInAcc] (
    [Id]                                VARCHAR (50)    NOT NULL,
    [BonusRetainedDisbursementDetailId] VARCHAR (50)    NULL,
    [SalaryHeadId]                      VARCHAR (30)    NULL,
    [EmpSystemId]                       VARCHAR (30)    NULL,
    [Amount]                            DECIMAL (18, 2) NULL,
    [PlantId]                           VARCHAR (10)    NULL,
    [MonthNo]                           INT             NULL,
    [YearNo]                            INT             NULL,
    [AddedBy]                           VARCHAR (100)   NOT NULL,
    [DateAdded]                         DATETIME        NOT NULL,
    [UpdatedBy]                         VARCHAR (100)   NULL,
    [DateUpdated]                       DATETIME        NULL,
    CONSTRAINT [PK_SalaryDisbursementInAcc] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalaryDisbursementInAcc_BonusRetainedDisbursementDetail] FOREIGN KEY ([BonusRetainedDisbursementDetailId]) REFERENCES [dbo].[BonusRetainedDisbursementDetail] ([Id]),
    CONSTRAINT [FK_SalaryDisbursementInAcc_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_SalaryDisbursementInAcc_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalaryDisbursementInAcc_SalaryHead] FOREIGN KEY ([SalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

