CREATE TABLE [dbo].[DayStatusChild] (
    [Id]            VARCHAR (30) NOT NULL,
    [MasterId]      VARCHAR (30) NOT NULL,
    [PlantId]       VARCHAR (10) NOT NULL,
    [EmpTypeId]     VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_DayStatusChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DayStatusChild_EmpTypeId] FOREIGN KEY ([EmpTypeId]) REFERENCES [HKP].[EmployeeCategory] ([Id]),
    CONSTRAINT [FK_DayStatusChild_MasterId] FOREIGN KEY ([MasterId]) REFERENCES [dbo].[DayStatusMaster] ([Id]),
    CONSTRAINT [FK_DayStatusChild_PlantId] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

