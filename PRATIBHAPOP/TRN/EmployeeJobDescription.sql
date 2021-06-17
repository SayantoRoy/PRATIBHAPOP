CREATE TABLE [TRN].[EmployeeJobDescription] (
    [Id]               VARCHAR (20) NOT NULL,
    [JobDescriptionId] VARCHAR (10) NOT NULL,
    [EmployeeId]       VARCHAR (30) NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_EmployeeJobDescription] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeJobDescription_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeJobDescription_JobDescription] FOREIGN KEY ([JobDescriptionId]) REFERENCES [HKP].[JobDescription] ([Id])
);

