CREATE TABLE [HKP].[ServiceGroup] (
    [Id]            VARCHAR (10)    NOT NULL,
    [ServiceTypeId] VARCHAR (10)    NOT NULL,
    [HSNCodeId]     VARCHAR (10)    NULL,
    [Sequence]      DECIMAL (18, 2) NOT NULL,
    [Code]          VARCHAR (10)    NOT NULL,
    [ShortName]     VARCHAR (50)    NOT NULL,
    [StandardName]  VARCHAR (50)    NOT NULL,
    [UserName]      VARCHAR (50)    NOT NULL,
    [Description]   VARCHAR (250)   NULL,
    [Remarks]       VARCHAR (250)   NULL,
    [Active]        BIT             NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_ServiceGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ServiceGroup_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id]),
    CONSTRAINT [FK_ServiceGroup_ServiceType] FOREIGN KEY ([ServiceTypeId]) REFERENCES [HKP].[ServiceType] ([Id])
);

