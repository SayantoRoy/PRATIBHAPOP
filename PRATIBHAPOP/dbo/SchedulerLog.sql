CREATE TABLE [dbo].[SchedulerLog] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [ScheduleMessage] VARCHAR (2024) NULL,
    [isError]         BIT            NULL,
    [AddedDate]       DATETIME       NULL,
    [UserName]        VARCHAR (50)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

