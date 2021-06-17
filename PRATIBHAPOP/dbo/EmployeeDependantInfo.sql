CREATE TABLE [dbo].[EmployeeDependantInfo] (
    [Id]           VARCHAR (10)   NOT NULL,
    [EmpSystemId]  VARCHAR (30)   NULL,
    [Name]         VARCHAR (100)  NULL,
    [LocalName]    NVARCHAR (100) NULL,
    [RelationId]   VARCHAR (10)   NULL,
    [DOB]          DATETIME       NULL,
    [ProfessionId] VARCHAR (10)   NULL,
    [Remarks]      VARCHAR (200)  NULL,
    [AddedBy]      VARCHAR (30)   NOT NULL,
    [AddedDate]    DATETIME       NOT NULL,
    [UpdatedBy]    VARCHAR (30)   NULL,
    [UpdatedDate]  DATETIME       NULL,
    CONSTRAINT [PK_EmployeeDependantInfo] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeDependantInfo_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeDependantInfo_Profession] FOREIGN KEY ([ProfessionId]) REFERENCES [SCS].[Profession] ([Id]),
    CONSTRAINT [FK_EmployeeDependantInfo_Relationship] FOREIGN KEY ([RelationId]) REFERENCES [SCS].[Relationship] ([Id])
);

