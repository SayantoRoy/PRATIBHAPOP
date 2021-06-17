CREATE TABLE [dbo].[ProcessLock] (
    [ProcessId]            VARCHAR (30)  NOT NULL,
    [ProcessStartTime]     DATETIME      NULL,
    [MaxDurationInMinutes] INT           NULL,
    [UserId]               VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([ProcessId] ASC)
);

