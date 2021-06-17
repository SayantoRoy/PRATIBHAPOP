CREATE TABLE [HKP].[QMSSubLocation] (
    [Id]                  VARCHAR (10) NOT NULL,
    [QMSActivityMasterId] VARCHAR (10) NOT NULL,
    [SubLocationId]       VARCHAR (10) NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    CONSTRAINT [PK_QMSSubLocation] PRIMARY KEY CLUSTERED ([Id] ASC)
);

