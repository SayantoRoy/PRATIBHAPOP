CREATE TABLE [dbo].[EmployeeAdditionDeductionPlantChild] (
    [Id]            VARCHAR (30) NOT NULL,
    [MasterId]      VARCHAR (30) NOT NULL,
    [PlantId]       VARCHAR (10) NOT NULL,
    [EmpTypeId]     VARCHAR (10) NOT NULL,
    [DesignationId] VARCHAR (10) NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_EmployeeAdditionDeductionPlantChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeAdditionDeductionPlantChild_DesignationId] FOREIGN KEY ([DesignationId]) REFERENCES [MST].[DesignationMaster] ([Id]),
    CONSTRAINT [FK_EmployeeAdditionDeductionPlantChild_EmpTypeId] FOREIGN KEY ([EmpTypeId]) REFERENCES [HKP].[EmployeeCategory] ([Id]),
    CONSTRAINT [FK_EmployeeAdditionDeductionPlantChild_MasterId] FOREIGN KEY ([MasterId]) REFERENCES [dbo].[EmployeeAdditionDeductionHeader] ([Id]),
    CONSTRAINT [FK_EmployeeAdditionDeductionPlantChild_PlantId] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

