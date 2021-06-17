CREATE TABLE [TRN].[QMSRejectionChild] (
    [Id]                   VARCHAR (20)    NOT NULL,
    [QMSRejectionMasterId] VARCHAR (20)    NOT NULL,
    [StockKeepingUnitId]   VARCHAR (20)    NOT NULL,
    [QMSDefectMasterId]    VARCHAR (10)    NOT NULL,
    [GradeMasterId]        VARCHAR (20)    NOT NULL,
    [NoOfPics]             DECIMAL (18, 2) NOT NULL,
    [RepairablePics]       DECIMAL (18, 2) NOT NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    CONSTRAINT [PK_QMSRejectionChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_QMSRejectionChild_GradeMaster] FOREIGN KEY ([GradeMasterId]) REFERENCES [HKP].[GradeMaster] ([Id]),
    CONSTRAINT [FK_QMSRejectionChild_QMSDefectMaster] FOREIGN KEY ([QMSDefectMasterId]) REFERENCES [MST].[QMSDefectMaster] ([Id]),
    CONSTRAINT [FK_QMSRejectionChild_QMSRejectionMaster] FOREIGN KEY ([QMSRejectionMasterId]) REFERENCES [TRN].[QMSRejection] ([Id]),
    CONSTRAINT [FK_QMSRejectionChild_StockKeepingUnit] FOREIGN KEY ([StockKeepingUnitId]) REFERENCES [HKP].[StockKeepingUnit] ([Id])
);

