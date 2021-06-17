CREATE TABLE [dbo].[userWiseCentralPayrollGroup] (
    [SystemID]           VARCHAR (30)  NOT NULL,
    [CntrlPyrolSystemID] VARCHAR (30)  NULL,
    [UserSystemID]       VARCHAR (10)  NULL,
    [GroupID]            VARCHAR (10)  NULL,
    [AddedBy]            VARCHAR (100) NOT NULL,
    [DateAdded]          DATETIME      NOT NULL,
    [UpdatedBy]          VARCHAR (100) NULL,
    [DateUpdated]        DATETIME      NULL,
    CONSTRAINT [PK_userWiseCentralPayrollGroup] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_userWiseCentralPayrollGroup_CentralPayRollGroup] FOREIGN KEY ([CntrlPyrolSystemID]) REFERENCES [dbo].[CentralPayRollGroup] ([SystemID]),
    CONSTRAINT [FK_userWiseCentralPayrollGroup_GroupCreation] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_userWiseCentralPayrollGroup_User] FOREIGN KEY ([UserSystemID]) REFERENCES [SEC].[User] ([Id])
);

