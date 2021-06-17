CREATE TABLE [dbo].[LvPolMstYearCalendar] (
    [LvPolMstSystemID] VARCHAR (30)  NOT NULL,
    [YrCalSystemID]    VARCHAR (30)  NOT NULL,
    [AddedBy]          VARCHAR (100) NOT NULL,
    [DateAdded]        DATETIME      NOT NULL,
    [UpdatedBy]        VARCHAR (100) NULL,
    [DateUpdated]      DATETIME      NULL,
    CONSTRAINT [PK_LvPolMstYearCalendar] PRIMARY KEY CLUSTERED ([LvPolMstSystemID] ASC, [YrCalSystemID] ASC),
    CONSTRAINT [FK_LvPolMstYearCalendar_LeavePolicyMaster] FOREIGN KEY ([LvPolMstSystemID]) REFERENCES [dbo].[LeavePolicyMaster] ([SystemID])
);

