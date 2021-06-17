CREATE TABLE [TRN].[WorkStationDaily] (
    [Id]                   VARCHAR (10) NOT NULL,
    [EntityId]             VARCHAR (10) NULL,
    [WorkCenterId]         VARCHAR (30) NULL,
    [OperationId]          VARCHAR (20) NULL,
    [EmployeeId]           VARCHAR (30) NULL,
    [WorkStation]          VARCHAR (50) NULL,
    [EntryDate]            DATE         NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    [FixedAssetRegisterId] VARCHAR (30) NULL,
    CONSTRAINT [PK_WorkStationDaily] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WorkStationDaily_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_WorkStationDaily_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_WorkStationDaily_FixedAssetRegister] FOREIGN KEY ([FixedAssetRegisterId]) REFERENCES [TRN].[FixedAssetRegister] ([Id]),
    CONSTRAINT [FK_WorkStationDaily_WorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id])
);

