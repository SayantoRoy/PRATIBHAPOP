CREATE TABLE [dbo].[EmployeeNomineeInfo] (
    [Id]           VARCHAR (50)   NOT NULL,
    [EmpSystemId]  VARCHAR (30)   NULL,
    [Name]         VARCHAR (100)  NULL,
    [LocalName]    NVARCHAR (100) NULL,
    [Relation]     VARCHAR (50)   NULL,
    [CellNo]       VARCHAR (25)   NULL,
    [AddressLocal] NVARCHAR (50)  NULL,
    [Address]      VARCHAR (50)   NULL,
    [AddedBy]      VARCHAR (30)   NOT NULL,
    [AddedDate]    DATETIME       NOT NULL,
    [UpdatedBy]    VARCHAR (30)   NULL,
    [UpdatedDate]  DATETIME       NULL,
    [DOB]          DATETIME       NULL,
    [NationalID]   VARCHAR (30)   NULL,
    CONSTRAINT [PK_EmployeeNomineeInfo] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeNomineeInfo_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

