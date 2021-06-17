CREATE TABLE [dbo].[BlackList] (
    [Id]                      VARCHAR (20)  NOT NULL,
    [Date]                    DATETIME      NOT NULL,
    [AadharNumber]            VARCHAR (30)  NULL,
    [CompanyEmployeeOutsider] VARCHAR (15)  NOT NULL,
    [EmpSystemId]             VARCHAR (30)  NULL,
    [OutsiderName]            VARCHAR (50)  NULL,
    [OutsiderFatherName]      VARCHAR (50)  NULL,
    [OutsiderMotherName]      VARCHAR (50)  NULL,
    [Reason]                  VARCHAR (50)  NOT NULL,
    [BlacklistingDate]        DATETIME      NOT NULL,
    [Remarks]                 VARCHAR (250) NULL,
    [AddedBy]                 VARCHAR (30)  NOT NULL,
    [AddedDate]               DATETIME      NOT NULL,
    [AddedFromIP]             VARCHAR (15)  NOT NULL,
    [UpdatedBy]               VARCHAR (30)  NULL,
    [UpdatedDate]             DATETIME      NULL,
    [UpdatedFromIP]           VARCHAR (15)  NULL,
    [ByWhomId]                VARCHAR (30)  NOT NULL,
    CONSTRAINT [PK_BlackList] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BlackList_ByWhom] FOREIGN KEY ([ByWhomId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_BlackList_EmpSystem] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

