CREATE TABLE [SCS].[PostOffice] (
    [Id]              VARCHAR (10)    NOT NULL,
    [DistrictId]      VARCHAR (10)    NOT NULL,
    [Sequence]        DECIMAL (18, 2) NOT NULL,
    [Code]            VARCHAR (10)    NOT NULL,
    [ShortName]       VARCHAR (15)    NOT NULL,
    [StandardName]    VARCHAR (50)    NOT NULL,
    [UserName]        VARCHAR (50)    NOT NULL,
    [Description]     VARCHAR (250)   NULL,
    [Remarks]         VARCHAR (250)   NULL,
    [AddedBy]         VARCHAR (30)    NOT NULL,
    [AddedDate]       DATETIME        NOT NULL,
    [AddedFromIP]     VARCHAR (15)    NOT NULL,
    [UpdatedBy]       VARCHAR (30)    NULL,
    [UpdatedDate]     DATETIME        NULL,
    [UpdatedFromIP]   VARCHAR (15)    NULL,
    [Active]          BIT             NULL,
    [Archive]         BIT             NULL,
    [PoliceStationId] VARCHAR (10)    NULL,
    CONSTRAINT [PK_PostOffice] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PostOffice_District] FOREIGN KEY ([DistrictId]) REFERENCES [SCS].[District] ([Id]),
    CONSTRAINT [FK_PostOffice_PoliceStation] FOREIGN KEY ([PoliceStationId]) REFERENCES [SCS].[PoliceStation] ([Id])
);

