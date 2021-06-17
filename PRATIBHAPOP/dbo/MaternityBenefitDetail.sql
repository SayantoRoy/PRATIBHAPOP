CREATE TABLE [dbo].[MaternityBenefitDetail] (
    [Id]                       VARCHAR (50)    NOT NULL,
    [MaternityBenefitMasterId] VARCHAR (50)    NULL,
    [SalaryProcessMasterId]    VARCHAR (30)    NULL,
    [YearNo]                   INT             NOT NULL,
    [MonthNo]                  INT             NOT NULL,
    [WorkingDays]              DECIMAL (18, 2) NOT NULL,
    [StructureAmount]          DECIMAL (18, 2) NOT NULL,
    [EarnedAmount]             DECIMAL (18, 2) NOT NULL,
    [BonusAmount]              DECIMAL (18, 2) NULL,
    [EncashAmount]             DECIMAL (18, 2) NULL,
    [OtherAmount]              DECIMAL (18, 2) NULL,
    [AddedBy]                  VARCHAR (30)    NOT NULL,
    [AddedDate]                DATETIME        NOT NULL,
    [AddedFromIP]              VARCHAR (15)    NOT NULL,
    [UpdatedBy]                VARCHAR (30)    NULL,
    [UpdatedDate]              DATETIME        NULL,
    [UpdatedFromIP]            VARCHAR (15)    NULL,
    CONSTRAINT [PK_MaternityBenefitDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaternityBenefitDetail_MaternityBenefitMaster] FOREIGN KEY ([MaternityBenefitMasterId]) REFERENCES [dbo].[MaternityBenefitMaster] ([Id]),
    CONSTRAINT [FK_MaternityBenefitDetail_SalaryProcMaster] FOREIGN KEY ([SalaryProcessMasterId]) REFERENCES [dbo].[SalaryProcMaster] ([SystemID])
);

