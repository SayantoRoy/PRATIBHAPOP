CREATE TABLE [ACS].[ActionLog] (
    [Id]             BIGINT        IDENTITY (1, 1) NOT NULL,
    [UserId]         VARCHAR (30)  NULL,
    [ControllerName] VARCHAR (100) NOT NULL,
    [ActionName]     VARCHAR (50)  NOT NULL,
    [WorkStationIP]  VARCHAR (15)  NOT NULL,
    [RecordTime]     DATETIME      NOT NULL,
    CONSTRAINT [PK_ActionLog] PRIMARY KEY CLUSTERED ([Id] ASC)
);

