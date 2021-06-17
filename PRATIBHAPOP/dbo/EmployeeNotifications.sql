CREATE TABLE [dbo].[EmployeeNotifications] (
    [SystemID]                 DECIMAL (30) IDENTITY (1, 1) NOT NULL,
    [EmpInfoSystemID]          VARCHAR (30) NULL,
    [EventSourceTableSystemID] VARCHAR (30) NULL,
    [EventDate]                DATETIME     CONSTRAINT [DF_EmployeeNotifications_EventDate] DEFAULT (getdate()) NULL,
    [EventRaisedBy]            VARCHAR (30) NULL,
    [EventType]                VARCHAR (30) NULL,
    [IsDelivered]              BIT          CONSTRAINT [DF_EmployeeNotifications_IsDelivered] DEFAULT ((0)) NOT NULL,
    [WorkDate]                 DATETIME     NULL,
    CONSTRAINT [PK__Employee__9394F6AA983FC357] PRIMARY KEY CLUSTERED ([SystemID] ASC)
);

