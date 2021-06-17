CREATE TABLE [dbo].[OTfromApp] (
    [Id]          VARCHAR (30)    NOT NULL,
    [WorkDate]    DATETIME        NOT NULL,
    [EmpSystemId] VARCHAR (30)    NOT NULL,
    [OThour]      DECIMAL (18, 2) NOT NULL,
    [Remarks]     VARCHAR (250)   NULL,
    [AddedBy]     VARCHAR (30)    NOT NULL,
    [AddedDate]   DATETIME        NOT NULL,
    [UpdatedBy]   VARCHAR (30)    NULL,
    [UpdatedDate] DATETIME        NULL,
    [IsConfirmed] BIT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK__OTfromAp__3214EC075C14EFE8] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__OTfromApp__EmpSy__413BFFB3] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

