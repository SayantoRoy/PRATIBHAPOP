CREATE TABLE [dbo].[CostingTypes] (
    [Id]            VARCHAR (10) NOT NULL,
    [CostingType]   VARCHAR (15) NULL,
    [UserName]      VARCHAR (50) NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_CostingTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

