CREATE TABLE [dbo].[BOMAttachmentDestination] (
    [Id]                    VARCHAR (20) NOT NULL,
    [BOMAttachmentDetailId] VARCHAR (30) NULL,
    [DestinationId]         VARCHAR (10) NULL,
    [AddedBy]               VARCHAR (30) NOT NULL,
    [AddedDate]             DATETIME     NOT NULL,
    [AddedFromIP]           VARCHAR (15) NOT NULL,
    [UpdatedBy]             VARCHAR (30) NULL,
    [UpdatedDate]           DATETIME     NULL,
    [UpdatedFromIP]         VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([BOMAttachmentDetailId]) REFERENCES [dbo].[BOMAttachmentDetail] ([Id]),
    FOREIGN KEY ([DestinationId]) REFERENCES [MST].[Destination] ([Id])
);

