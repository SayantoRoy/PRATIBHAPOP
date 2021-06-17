CREATE TABLE [HKP].[JobWorkItem] (
    [Id]                  VARCHAR (50)    NOT NULL,
    [Sequence]            DECIMAL (18, 2) NULL,
    [Code]                VARCHAR (50)    NULL,
    [ShortName]           VARCHAR (150)   NULL,
    [StandardName]        VARCHAR (250)   NULL,
    [UserName]            VARCHAR (250)   NOT NULL,
    [UOMId]               VARCHAR (10)    NULL,
    [IsActive]            BIT             NULL,
    [ResponsiblePersonId] VARCHAR (30)    NULL,
    [Remarks]             VARCHAR (500)   NULL,
    [AddedBy]             VARCHAR (30)    NOT NULL,
    [AddedDate]           DATETIME        NOT NULL,
    [AddedFromIP]         VARCHAR (15)    NOT NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    [MaterialMasterId]    VARCHAR (30)    NULL,
    CONSTRAINT [PK_JobWorkItem] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkItem_EmployeeInformation] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_JobWorkItem_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_JobWorkItem_UnitOfMeasurement] FOREIGN KEY ([UOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

