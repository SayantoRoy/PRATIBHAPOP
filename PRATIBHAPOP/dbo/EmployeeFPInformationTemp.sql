CREATE TABLE [dbo].[EmployeeFPInformationTemp] (
    [Enrollment]   VARCHAR (30)   NOT NULL,
    [FingerIndex]  INT            NOT NULL,
    [EmployeeCode] VARCHAR (30)   NULL,
    [EmployeeName] VARCHAR (150)  NULL,
    [CardNumber]   VARCHAR (30)   NOT NULL,
    [FPTemplate]   NVARCHAR (MAX) NULL,
    [bEnabled]     BIT            NULL,
    [Privilege]    INT            NULL,
    [Password]     VARCHAR (30)   NULL,
    [Flag]         INT            NULL,
    CONSTRAINT [PK_EmployeeFPInformationTemp] PRIMARY KEY CLUSTERED ([Enrollment] ASC, [FingerIndex] ASC)
);

