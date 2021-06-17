CREATE TABLE [dbo].[EmployeeOTEntitle] (
    [SystemID]    VARCHAR (30)  NOT NULL,
    [EmpSystemID] VARCHAR (30)  NULL,
    [IsOTEntitle] BIT           NULL,
    [OTStartDate] DATETIME      NULL,
    [OTEndDate]   DATETIME      NULL,
    [AddedBy]     VARCHAR (100) NOT NULL,
    [DateAdded]   DATETIME      NOT NULL,
    [UpdatedBy]   VARCHAR (100) NULL,
    [DateUpdated] DATETIME      NULL,
    CONSTRAINT [PK_EmployeeOTEntitle] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_EmployeeOTEntitle_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

