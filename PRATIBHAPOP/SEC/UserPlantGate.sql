CREATE TABLE [SEC].[UserPlantGate] (
    [Id]            VARCHAR (10) NOT NULL,
    [UserId]        VARCHAR (10) NOT NULL,
    [PlantGateId]   VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_UserPlantGate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserPlantGate_PlantWiseGate] FOREIGN KEY ([PlantGateId]) REFERENCES [dbo].[PlantWiseGate] ([Id]),
    CONSTRAINT [FK_UserPlantGate_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

