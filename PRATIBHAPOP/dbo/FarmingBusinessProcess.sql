CREATE TABLE [dbo].[FarmingBusinessProcess] (
    [Id]              VARCHAR (30) NOT NULL,
    [BusinessProcess] VARCHAR (30) NULL,
    [EnumValue]       INT          NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_FarmingBusinessProcess] PRIMARY KEY CLUSTERED ([Id] ASC)
);

