CREATE TABLE [dbo].[EmployeeFPInformation] (
    [Id]            VARCHAR (30)   NOT NULL,
    [EmpSystemId]   VARCHAR (30)   NOT NULL,
    [FPId]          VARCHAR (50)   NULL,
    [FPTemplate]    NVARCHAR (MAX) NULL,
    [FPImage]       IMAGE          NULL,
    [IsLeft]        BIT            NOT NULL,
    [FingerName]    VARCHAR (50)   NULL,
    [AddedBy]       VARCHAR (100)  NULL,
    [AddedDate]     DATETIME       NULL,
    [AddedFromIP]   VARCHAR (15)   NULL,
    [UpdatedBy]     VARCHAR (100)  NULL,
    [UpdatedDate]   DATETIME       NULL,
    [UpdatedFromIP] VARCHAR (15)   NULL,
    CONSTRAINT [PK_EmployeeFPInformation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeFPInformation_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

