CREATE TABLE [dbo].[OTLimitSetting] (
    [Id]                VARCHAR (30)    NOT NULL,
    [PlantID]           VARCHAR (10)    NOT NULL,
    [Week]              VARCHAR (30)    NOT NULL,
    [UserName]          VARCHAR (50)    NOT NULL,
    [Description]       VARCHAR (250)   NULL,
    [MinOTLimitParDay]  DECIMAL (18, 2) NOT NULL,
    [MaxOTLimitParDay]  DECIMAL (18, 2) NOT NULL,
    [MaxOTLimitParWeek] DECIMAL (18, 2) NOT NULL,
    [OTreductionFactor] DECIMAL (18, 2) NOT NULL,
    [Active]            BIT             NOT NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    CONSTRAINT [PK_OTLimitSetting] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OTLimitSetting_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

