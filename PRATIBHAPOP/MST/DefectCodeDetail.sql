CREATE TABLE [MST].[DefectCodeDetail] (
    [Id]            VARCHAR (10) NOT NULL,
    [DefectCodeId]  VARCHAR (10) NOT NULL,
    [Zone]          VARCHAR (10) NOT NULL,
    [Point]         INT          NOT NULL,
    [Archive]       BIT          NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_DefectCodeDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DefectCodeDetail_DefectCode] FOREIGN KEY ([DefectCodeId]) REFERENCES [MST].[DefectCode] ([Id]),
    CONSTRAINT [FK_DefectCodeDetail_FGZone] FOREIGN KEY ([Zone]) REFERENCES [HKP].[FGZone] ([Id])
);

