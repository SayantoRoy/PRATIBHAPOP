CREATE TABLE [dbo].[WorkCenterWiseShift] (
    [Id]                 VARCHAR (30) NOT NULL,
    [WorkCenterMasterId] VARCHAR (30) NULL,
    [ShiftDefinationID]  VARCHAR (30) NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_WorkCenterWiseShift] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WorkCenterWiseShift_ShiftDefination] FOREIGN KEY ([ShiftDefinationID]) REFERENCES [dbo].[ShiftDefination] ([SystemID]),
    CONSTRAINT [FK_WorkCenterWiseShift_WorkCenterMaster] FOREIGN KEY ([WorkCenterMasterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id])
);

