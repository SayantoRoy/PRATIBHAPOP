CREATE TABLE [dbo].[TaxGroupTagWithEmployee] (
    [SystemID]        VARCHAR (30)  NOT NULL,
    [TaxGroupID]      VARCHAR (30)  NOT NULL,
    [TinNo]           VARCHAR (30)  NULL,
    [EmpInfoSystemID] VARCHAR (30)  NOT NULL,
    [GroupID]         VARCHAR (10)  NULL,
    [PlantID]         VARCHAR (10)  NULL,
    [AddedBy]         VARCHAR (100) NOT NULL,
    [DateAdded]       DATETIME      NOT NULL,
    [UpdatedBy]       VARCHAR (100) NULL,
    [DateUpdated]     DATETIME      NULL,
    CONSTRAINT [PK_TaxGroupTagWithEmployee] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_TaxGroupTagWithEmployee_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_TaxGroupTagWithEmployee_EmployeeInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_TaxGroupTagWithEmployee_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_TaxGroupTagWithEmployee_TaxGroup] FOREIGN KEY ([TaxGroupID]) REFERENCES [dbo].[TaxGroup] ([SystemID])
);

