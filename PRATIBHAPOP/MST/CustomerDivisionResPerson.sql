CREATE TABLE [MST].[CustomerDivisionResPerson] (
    [Id]                           VARCHAR (10) NOT NULL,
    [CustomerDivisionId]           VARCHAR (10) NOT NULL,
    [OrderResponsibleDepartmentId] INT          NOT NULL,
    [OurRespnsiblePersonId]        VARCHAR (30) NOT NULL,
    [PartyRespnsiblePersonId]      VARCHAR (30) NULL,
    [AddedBy]                      VARCHAR (30) NOT NULL,
    [AddedDate]                    DATETIME     NOT NULL,
    [AddedFromIP]                  VARCHAR (15) NOT NULL,
    [UpdatedBy]                    VARCHAR (30) NULL,
    [UpdatedDate]                  DATETIME     NULL,
    [UpdatedFromIP]                VARCHAR (15) NULL,
    CONSTRAINT [PK_CustomerDivisionResPerson] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CustomerDivisionResPerson_CustomerDivision] FOREIGN KEY ([CustomerDivisionId]) REFERENCES [MST].[CustomerDivision] ([Id]),
    CONSTRAINT [FK_CustomerDivisionResPerson_EmployeeInformation_OurRespnsiblePersonId] FOREIGN KEY ([OurRespnsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_CustomerDivisionResPerson_EmployeeInformation_PartyRespnsiblePersonId] FOREIGN KEY ([PartyRespnsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_CustomerDivisionResPerson_OrderResponsibleDepartment] FOREIGN KEY ([OrderResponsibleDepartmentId]) REFERENCES [MST].[OrderResponsibleDepartment] ([Id])
);

