CREATE TABLE [dbo].[EmployeeBankInfo] (
    [RowID]            INT             IDENTITY (1, 1) NOT NULL,
    [EmpSystemID]      VARCHAR (30)    NULL,
    [BankSystemID]     VARCHAR (10)    NULL,
    [BankBranchId]     VARCHAR (10)    NULL,
    [BankAccNo]        VARCHAR (50)    NULL,
    [SalaryPercentage] DECIMAL (18, 2) NULL,
    [IsApproved]       BIT             CONSTRAINT [DF__EmployeeB__IsApp__58A712EB] DEFAULT ((0)) NOT NULL,
    [ApprovedDateTime] DATETIME        NULL,
    [ApprovedBy]       VARCHAR (30)    NULL,
    [AddedBy]          VARCHAR (100)   NULL,
    [DateAdded]        DATETIME        NULL,
    [UpdatedBy]        VARCHAR (100)   NULL,
    [DateUpdated]      DATETIME        NULL,
    [IFSCCode]         VARCHAR (100)   NULL,
    [MICRCode]         VARCHAR (100)   NULL,
    CONSTRAINT [PK_EmployeeBankInfo] PRIMARY KEY CLUSTERED ([RowID] ASC),
    CONSTRAINT [FK_EmployeeBankInfo_Bank] FOREIGN KEY ([BankSystemID]) REFERENCES [HKP].[Bank] ([Id]),
    CONSTRAINT [FK_EmployeeBankInfo_BankBranch] FOREIGN KEY ([BankBranchId]) REFERENCES [HKP].[BankBranch] ([Id]),
    CONSTRAINT [FK_EmployeeBankInfo_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

