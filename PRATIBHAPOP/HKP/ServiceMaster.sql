CREATE TABLE [HKP].[ServiceMaster] (
    [Id]             VARCHAR (12)    NOT NULL,
    [ServiceGroupId] VARCHAR (10)    NOT NULL,
    [Sequence]       DECIMAL (18, 2) NOT NULL,
    [Code]           VARCHAR (10)    NOT NULL,
    [UserName]       VARCHAR (50)    NOT NULL,
    [StandardName]   VARCHAR (50)    NULL,
    [Description]    VARCHAR (250)   NULL,
    [Remarks]        VARCHAR (250)   NULL,
    [Active]         BIT             NOT NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    [HSNCodeId]      VARCHAR (10)    NULL,
    CONSTRAINT [PK_ServiceMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ServiceMaster_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id]),
    CONSTRAINT [FK_ServiceMaster_ServiceGroup] FOREIGN KEY ([ServiceGroupId]) REFERENCES [HKP].[ServiceGroup] ([Id])
);

