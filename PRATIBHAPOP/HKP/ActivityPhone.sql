CREATE TABLE [HKP].[ActivityPhone] (
    [Id]            VARCHAR (20) NOT NULL,
    [EmployeeId]    VARCHAR (30) NULL,
    [PartyId]       VARCHAR (10) NULL,
    [ActivityId]    VARCHAR (10) NOT NULL,
    [CellNumber]    VARCHAR (30) NOT NULL,
    [IsLandPhone]   BIT          NOT NULL,
    [Active]        BIT          NOT NULL,
    [Archive]       BIT          CONSTRAINT [DF_ActivityPhone_Archive] DEFAULT ((0)) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_ActivityPhone] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ActivityPhone_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_ActivityPhone_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ActivityPhone_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id])
);

