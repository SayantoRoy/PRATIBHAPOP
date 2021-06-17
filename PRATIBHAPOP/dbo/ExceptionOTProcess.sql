CREATE TABLE [dbo].[ExceptionOTProcess] (
    [Id]            VARCHAR (30) NOT NULL,
    [FromDate]      DATETIME     NOT NULL,
    [ToDate]        DATETIME     NOT NULL,
    [EmpSystemId]   VARCHAR (30) NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

