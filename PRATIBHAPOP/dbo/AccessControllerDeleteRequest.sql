CREATE TABLE [dbo].[AccessControllerDeleteRequest] (
    [Id]              VARCHAR (10) NOT NULL,
    [EmpInfoSystemID] VARCHAR (30) NOT NULL,
    [DeviceSystemID]  VARCHAR (10) NOT NULL,
    [GroupID]         VARCHAR (10) NULL,
    [PlantID]         VARCHAR (10) NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AccessControllerDeleteRequest_AccessControllerList] FOREIGN KEY ([DeviceSystemID]) REFERENCES [MST].[AccessControllerList] ([Id]),
    CONSTRAINT [FK_AccessControllerDeleteRequest_EmployeeInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_AccessControllerDeleteRequest_GroupCreation] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_AccessControllerDeleteRequest_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

