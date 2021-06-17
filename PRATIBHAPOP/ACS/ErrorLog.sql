CREATE TABLE [ACS].[ErrorLog] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [UserId]          VARCHAR (30)   NULL,
    [AppVersion]      VARCHAR (20)   NOT NULL,
    [ModuleName]      VARCHAR (30)   NULL,
    [ErrorType]       VARCHAR (30)   NOT NULL,
    [ErrorCode]       VARCHAR (10)   NULL,
    [ErrorMessage]    VARCHAR (4000) NOT NULL,
    [Exception]       VARCHAR (200)  NOT NULL,
    [ServiceName]     VARCHAR (100)  NULL,
    [MethodName]      VARCHAR (100)  NULL,
    [ControllerName]  VARCHAR (100)  NULL,
    [ActionName]      VARCHAR (50)   NULL,
    [IsEmailRequired] BIT            NOT NULL,
    [RecordTime]      DATETIME       NOT NULL,
    CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED ([Id] ASC)
);

