CREATE TABLE [dbo].[EmployeeReactivation] (
    [Id]             VARCHAR (10)  NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [CompanyId]      VARCHAR (10)  NOT NULL,
    [PlantId]        VARCHAR (10)  NULL,
    [EmployeeId]     VARCHAR (30)  NOT NULL,
    [Reason]         VARCHAR (250) NOT NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

