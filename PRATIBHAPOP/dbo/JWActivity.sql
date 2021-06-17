CREATE TABLE [dbo].[JWActivity] (
    [Id]                  VARCHAR (20)    NOT NULL,
    [Sequence]            DECIMAL (18, 2) NULL,
    [Code]                VARCHAR (10)    NULL,
    [ShortName]           VARCHAR (15)    NULL,
    [StandardName]        VARCHAR (100)   NULL,
    [UserName]            VARCHAR (100)   NULL,
    [Type]                VARCHAR (20)    NULL,
    [ResponsiblePersonId] VARCHAR (30)    NULL,
    [Remarks]             VARCHAR (250)   NULL,
    [ProcessId]           VARCHAR (10)    NULL,
    [ServiceId]           VARCHAR (12)    NULL,
    [AddedDate]           DATETIME        NOT NULL,
    [AddedFromIP]         VARCHAR (15)    NOT NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    [AddedBy]             VARCHAR (30)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([ServiceId]) REFERENCES [HKP].[ServiceMaster] ([Id])
);

