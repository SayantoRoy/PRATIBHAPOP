CREATE TABLE [HKP].[CompanyGroupMachineClass] (
    [Id]             VARCHAR (10) NOT NULL,
    [MachineClassId] VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) CONSTRAINT [DF_Table_1_ProcessId] DEFAULT ((1)) NOT NULL,
    [Active]         BIT          NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupMachineClass] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupMachineClass_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupMachineClass_MachineClass] FOREIGN KEY ([MachineClassId]) REFERENCES [HKP].[MachineClass] ([Id])
);

