CREATE TABLE [TRN].[RouteEmployee] (
    [Id]             VARCHAR (10) NOT NULL,
    [UpRouteId]      VARCHAR (10) NULL,
    [EmployeeId]     VARCHAR (30) NOT NULL,
    [PlantId]        VARCHAR (10) NOT NULL,
    [UpStoppageId]   VARCHAR (10) NULL,
    [DownStoppageId] VARCHAR (10) NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    [Active]         BIT          NULL,
    [DownRouteId]    VARCHAR (10) NULL,
    CONSTRAINT [PK__RouteEmployee] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RouteEmployee_EmployeeId] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_RouteEmployee_PlantId] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

