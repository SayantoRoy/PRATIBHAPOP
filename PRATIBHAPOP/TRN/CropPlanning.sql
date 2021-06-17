CREATE TABLE [TRN].[CropPlanning] (
    [Id]            VARCHAR (20) NOT NULL,
    [Year]          VARCHAR (50) NOT NULL,
    [Season]        VARCHAR (50) NOT NULL,
    [UserName]      VARCHAR (50) NOT NULL,
    [StartDate]     DATETIME     NOT NULL,
    [CloseDate]     DATETIME     NOT NULL,
    [ICSMasterID]   VARCHAR (20) NOT NULL,
    [Active]        BIT          NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_CropPlanning] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CropPlanning_ICSMaster] FOREIGN KEY ([ICSMasterID]) REFERENCES [MST].[ICSMaster] ([Id])
);

