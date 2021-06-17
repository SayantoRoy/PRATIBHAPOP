CREATE TABLE [dbo].[AccessControllerEmployeeTag] (
    [Id]              VARCHAR (30) NOT NULL,
    [GroupID]         VARCHAR (10) NOT NULL,
    [PlantID]         VARCHAR (10) NOT NULL,
    [EmpInfoSystemID] VARCHAR (30) NOT NULL,
    [DeviceSystemID]  VARCHAR (10) NOT NULL,
    [RegisterStatus]  VARCHAR (50) NULL,
    [AddedBy]         VARCHAR (30) NULL,
    [AddedDate]       DATETIME     NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [AddedFromIP]     VARCHAR (15) NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_AccessControllerEmployeeTag] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AccessControllerEmployeeTag_AccessControllerEmployeeTag] FOREIGN KEY ([DeviceSystemID]) REFERENCES [MST].[AccessControllerList] ([Id]),
    CONSTRAINT [FK_AccessControllerEmployeeTag_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_AccessControllerEmployeeTag_EmployeeInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_AccessControllerEmployeeTag_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

