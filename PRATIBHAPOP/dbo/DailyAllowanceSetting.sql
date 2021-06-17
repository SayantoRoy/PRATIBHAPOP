CREATE TABLE [dbo].[DailyAllowanceSetting] (
    [Id]               VARCHAR (30) NOT NULL,
    [PlantID]          VARCHAR (10) NOT NULL,
    [ShiftSystemID]    VARCHAR (30) NOT NULL,
    [DailyAllowanceID] VARCHAR (30) NOT NULL,
    [FromDate]         DATETIME     NULL,
    [ToDate]           DATETIME     NULL,
    [EffectiveTime]    DATETIME     NULL,
    [Active]           BIT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    [IsSpecificTime]   BIT          DEFAULT ((0)) NULL,
    CONSTRAINT [PK_DailyAllowanceSetting] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DailyAllowanceSetting_AllowanceDaily] FOREIGN KEY ([DailyAllowanceID]) REFERENCES [HKP].[AllowanceDaily] ([Id]),
    CONSTRAINT [FK_DailyAllowanceSetting_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_DailyAllowanceSetting_ShiftDefination] FOREIGN KEY ([ShiftSystemID]) REFERENCES [dbo].[ShiftDefination] ([SystemID])
);

