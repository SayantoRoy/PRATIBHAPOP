CREATE TABLE [dbo].[ChatParticipants] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [ChatMasterId] VARCHAR (30) NULL,
    [EmployeeId]   VARCHAR (30) NULL,
    [IsRead]       BIT          DEFAULT ((0)) NULL,
    [DateCreated]  DATETIME     DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ChatMasterId]) REFERENCES [dbo].[ChatMaster] ([Id]),
    CONSTRAINT [FK__ChatParti__Emplo__4501A39F] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

