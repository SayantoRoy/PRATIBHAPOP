CREATE TABLE [dbo].[AttendanceInfoExtra] (
    [id]          VARCHAR (30)    NOT NULL,
    [WorkDate]    DATETIME        NULL,
    [EmpSystemId] VARCHAR (30)    NULL,
    [InTime]      DATETIME        NULL,
    [OutTime]     DATETIME        NULL,
    [OffDuration] DECIMAL (18, 2) CONSTRAINT [DF__Attendanc__LateI__7D7C9D9A] DEFAULT ((0)) NOT NULL,
    [InfoType]    VARCHAR (20)    NULL,
    [PlantId]     VARCHAR (10)    NOT NULL,
    [AddedBy]     VARCHAR (30)    NOT NULL,
    [AddedDate]   DATETIME        NOT NULL,
    [UpdatedBy]   VARCHAR (30)    NULL,
    [UpdatedDate] DATETIME        NULL,
    CONSTRAINT [PK__Attendan__3213E83FEDA66F1A] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK__Attendanc__EmpSy__3DDFA4C4] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_AttendanceInfoExtra_PlantId] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

