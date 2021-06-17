CREATE TABLE [dbo].[EmployeeWeeklyOff] (
    [Id]            VARCHAR (30)  NOT NULL,
    [EmpSystemId]   VARCHAR (30)  NOT NULL,
    [WOHeaderId]    VARCHAR (30)  NOT NULL,
    [EffectiveDate] DATE          NOT NULL,
    [AddedBy]       VARCHAR (100) NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (100) NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    CONSTRAINT [PK_EmployeeWeeklyOff] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeWeeklyOff_EmpSystemId] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeWeeklyOff_WOHeaderId] FOREIGN KEY ([WOHeaderId]) REFERENCES [dbo].[WeekOffHeader] ([Id])
);

