CREATE TABLE [HKP].[TaskDependentDates] (
    [Id]                 VARCHAR (10) NOT NULL,
    [DependentDatesEnum] VARCHAR (30) NULL,
    [UserName]           VARCHAR (50) NOT NULL,
    [TaskDependentOn]    VARCHAR (20) NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

