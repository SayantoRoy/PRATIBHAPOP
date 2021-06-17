CREATE TABLE [dbo].[PlantWiseSalaryRegisterSortingParameters] (
    [Id]             INT           NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NULL,
    [CompanyId]      VARCHAR (10)  NULL,
    [PlantId]        VARCHAR (10)  NULL,
    [Type]           VARCHAR (10)  NULL,
    [Parameter]      VARCHAR (50)  NULL,
    [Sequence]       INT           NULL,
    [AddedBy]        VARCHAR (50)  NULL,
    [AddedDate]      DATETIME      NULL,
    [AddedFromIP]    VARCHAR (100) NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedBy]      VARCHAR (50)  NULL,
    [UpdatedFromIp]  VARCHAR (100) NULL,
    CONSTRAINT [PK_PlantWiseSalaryRegisterSortingParameters] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PlantWiseSalaryRegisterSortingParameters_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_PlantWiseSalaryRegisterSortingParameters_PlantWiseSalaryRegisterSortingParameters] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

