CREATE TABLE [dbo].[ExceptionEmployee] (
    [Id]                VARCHAR (30)  NOT NULL,
    [EmpSystemId]       VARCHAR (30)  NULL,
    [ExceptionCategory] VARCHAR (30)  NOT NULL,
    [PlantId]           VARCHAR (10)  NULL,
    [IsActive]          BIT           NOT NULL,
    [IsForever]         BIT           NOT NULL,
    [WorkDate]          DATE          NULL,
    [ExpirationDate]    DATETIME      NULL,
    [AddedBy]           VARCHAR (30)  NOT NULL,
    [AddedDate]         DATETIME      NOT NULL,
    [AddedFromIP]       VARCHAR (15)  NOT NULL,
    [UpdatedBy]         VARCHAR (30)  NULL,
    [UpdatedDate]       DATETIME      NULL,
    [UpdatedFromIP]     VARCHAR (15)  NULL,
    [Region]            VARCHAR (100) NULL,
    CONSTRAINT [PK__Exceptio__3214EC0745A9F02B] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__Exception__EmpSy__3183EF80] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__Exception__Plant__327813B9] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

