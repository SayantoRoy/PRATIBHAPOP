CREATE TABLE [dbo].[RetentionAllowMonthWise] (
    [ID]                    VARCHAR (20) NOT NULL,
    [RetenAllowEmpSystemID] VARCHAR (20) NULL,
    [SalaryHeadID]          VARCHAR (30) NULL,
    [MonthNo]               INT          NULL,
    [YearNo]                INT          NULL,
    [Amount]                INT          NULL,
    [AddedBy]               VARCHAR (30) NOT NULL,
    [AddedDate]             DATETIME     NOT NULL,
    [AddedFromIP]           VARCHAR (15) NOT NULL,
    [UpdatedBy]             VARCHAR (30) NULL,
    [UpdatedDate]           DATETIME     NULL,
    [UpdatedFromIP]         VARCHAR (15) NULL,
    CONSTRAINT [PK_RetentionAllowMonthWise] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_RetentionAllowMonthWise_RetentionAllowEmployee] FOREIGN KEY ([RetenAllowEmpSystemID]) REFERENCES [dbo].[RetentionAllowEmployee] ([ID]),
    CONSTRAINT [FK_RetentionAllowMonthWise_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

