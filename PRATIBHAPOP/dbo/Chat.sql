CREATE TABLE [dbo].[Chat] (
    [Id]           INT             IDENTITY (1, 1) NOT NULL,
    [ChatMasterId] VARCHAR (30)    NULL,
    [EmployeeId]   VARCHAR (30)    NULL,
    [Chat]         NVARCHAR (1024) NULL,
    [IsRead]       BIT             DEFAULT ((0)) NULL,
    [DateCreated]  DATETIME        DEFAULT (getdate()) NULL,
    [IsActive]     BIT             DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ChatMasterId]) REFERENCES [dbo].[ChatMaster] ([Id]),
    CONSTRAINT [FK__Chat__EmployeeId__4ABA7CF5] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

