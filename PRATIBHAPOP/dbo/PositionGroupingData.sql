CREATE TABLE [dbo].[PositionGroupingData] (
    [Id]               VARCHAR (10) NOT NULL,
    [UserDefineGroup1] VARCHAR (50) NULL,
    [UserDefineGroup2] VARCHAR (50) NULL,
    [UserDefineGroup3] VARCHAR (50) NULL,
    [UserDefineGroup4] VARCHAR (50) NULL,
    [UserDefineGroup5] VARCHAR (50) NULL,
    [UserDefineGroup6] VARCHAR (50) NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_PositionGroupingData] PRIMARY KEY CLUSTERED ([Id] ASC)
);

