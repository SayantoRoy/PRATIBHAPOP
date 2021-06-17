CREATE TABLE [MST].[CompliedShiftGroupDetail] (
    [Id]                      VARCHAR (10) NOT NULL,
    [CompliedShiftGroupingId] VARCHAR (10) NOT NULL,
    [ActualShiftId]           VARCHAR (30) NOT NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [AddedDate]               DATETIME     NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    CONSTRAINT [PK_CompliedShiftGroupDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompliedShiftGroupDetail_CompliedShiftGrouping] FOREIGN KEY ([CompliedShiftGroupingId]) REFERENCES [MST].[CompliedShiftGrouping] ([Id]),
    CONSTRAINT [FK_CompliedShiftGroupDetail_ShiftDefination] FOREIGN KEY ([ActualShiftId]) REFERENCES [dbo].[ShiftDefination] ([SystemID])
);

