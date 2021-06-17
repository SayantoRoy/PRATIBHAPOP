CREATE TABLE [dbo].[EmployeeLandLordInfo] (
    [Id]           VARCHAR (50)   NOT NULL,
    [EmpSystemId]  VARCHAR (30)   NULL,
    [Name]         VARCHAR (50)   NULL,
    [LocalName]    NVARCHAR (100) NULL,
    [CellNoLocal]  NVARCHAR (25)  NULL,
    [CellNo]       VARCHAR (25)   NULL,
    [AddressLocal] NVARCHAR (50)  NULL,
    [Address]      VARCHAR (50)   NULL,
    [AddedBy]      VARCHAR (30)   NOT NULL,
    [AddedDate]    DATETIME       NOT NULL,
    [UpdatedBy]    VARCHAR (30)   NULL,
    [UpdatedDate]  DATETIME       NULL,
    CONSTRAINT [PK_EmpoyeeLandLordInfo] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmpoyeeLandLordInfo_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

