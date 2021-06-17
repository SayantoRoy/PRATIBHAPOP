CREATE TABLE [TRN].[EmployeeWiseTermsAndConditions] (
    [Id]                       VARCHAR (10)   NOT NULL,
    [PreRecruitmentEmployeeId] VARCHAR (10)   NULL,
    [Description1]             NVARCHAR (MAX) NULL,
    [Description2]             NVARCHAR (MAX) NULL,
    [AddedBy]                  VARCHAR (30)   NOT NULL,
    [AddedDate]                DATETIME       NOT NULL,
    [AddedFromIP]              VARCHAR (15)   NOT NULL,
    [UpdatedBy]                VARCHAR (30)   NULL,
    [UpdatedDate]              DATETIME       NULL,
    [UpdatedFromIP]            VARCHAR (15)   NULL,
    CONSTRAINT [PK_EmployeeWiseTermsAndConditions] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeWiseTermsAndConditions_PreRecruitmentEmployee] FOREIGN KEY ([PreRecruitmentEmployeeId]) REFERENCES [dbo].[PreRecruitmentEmployee] ([Id])
);

