CREATE TABLE [SEC].[UserReportGroup] (
    [Id]               VARCHAR (30) NOT NULL,
    [UserId]           VARCHAR (10) NOT NULL,
    [ReportingGroupId] VARCHAR (30) NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_UserReportGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserReportGroup_ReportGroup] FOREIGN KEY ([ReportingGroupId]) REFERENCES [dbo].[ReportingGroup] ([Id]),
    CONSTRAINT [FK_UserReportGroup_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

