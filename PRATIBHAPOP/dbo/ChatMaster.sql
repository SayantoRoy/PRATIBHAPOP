CREATE TABLE [dbo].[ChatMaster] (
    [Id]          VARCHAR (30)   NOT NULL,
    [FromId]      VARCHAR (30)   NULL,
    [ToId]        VARCHAR (30)   NULL,
    [ChatName]    NVARCHAR (100) NULL,
    [IsActive]    BIT            DEFAULT ((1)) NULL,
    [IsGroupChat] BIT            DEFAULT ((0)) NULL,
    [DateCreated] DATETIME       DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__ChatMaste__FromI__3D6081D7] FOREIGN KEY ([FromId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__ChatMaster__ToId__3E54A610] FOREIGN KEY ([ToId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

