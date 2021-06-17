CREATE TABLE [dbo].[UserSectionShift] (
    [Id]          VARCHAR (10) NOT NULL,
    [UserId]      VARCHAR (10) NULL,
    [ShiftId]     VARCHAR (30) NULL,
    [PlantId]     VARCHAR (10) NULL,
    [AddedBy]     VARCHAR (30) NULL,
    [AddedDate]   DATETIME     NULL,
    [UpdatedBy]   VARCHAR (30) NULL,
    [UpdatedDate] DATETIME     NULL,
    CONSTRAINT [PK_UserSectionShift] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserSectionShift_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_UserSectionShift_ShiftDefination] FOREIGN KEY ([ShiftId]) REFERENCES [dbo].[ShiftDefination] ([SystemID]),
    CONSTRAINT [FK_UserSectionShift_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

