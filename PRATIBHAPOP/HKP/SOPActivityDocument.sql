CREATE TABLE [HKP].[SOPActivityDocument] (
    [Id]            VARCHAR (10) NOT NULL,
    [SOPActivityId] VARCHAR (10) NOT NULL,
    [SOPDocumentId] VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_SOPActivityDocument] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SOPActivityDocument_SOPActivity] FOREIGN KEY ([SOPActivityId]) REFERENCES [HKP].[SOPActivity] ([Id]),
    CONSTRAINT [FK_SOPActivityDocument_SOPDocument] FOREIGN KEY ([SOPDocumentId]) REFERENCES [HKP].[SOPDocument] ([Id])
);

