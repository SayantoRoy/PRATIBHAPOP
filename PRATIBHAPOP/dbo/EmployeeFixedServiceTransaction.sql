CREATE TABLE [dbo].[EmployeeFixedServiceTransaction] (
    [Id]                    VARCHAR (30)    NOT NULL,
    [PlantId]               VARCHAR (10)    NULL,
    [EffectiveDate]         DATETIME        NULL,
    [EmpSystemId]           VARCHAR (30)    NOT NULL,
    [EmployeeFixedServicId] VARCHAR (30)    NOT NULL,
    [Amount]                DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [Particulars]           VARCHAR (100)   NULL,
    [Remarks]               VARCHAR (250)   NULL,
    [Active]                BIT             NOT NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    CONSTRAINT [PK_EmployeeFixedServicTransaction] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeFixedServicTransaction_EmployeeFixedServicMaster] FOREIGN KEY ([EmployeeFixedServicId]) REFERENCES [dbo].[EmployeeFixedServiceMaster] ([Id]),
    CONSTRAINT [FK_EmployeeFixedServicTransaction_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeFixedServicTransaction_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

