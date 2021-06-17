CREATE TABLE [TRN].[CommitmentMonth] (
    [Id]            VARCHAR (10) NOT NULL,
    [CommitmentId]  VARCHAR (10) NULL,
    [CMonth]        INT          NOT NULL,
    [CYear]         INT          NOT NULL,
    [Qty]           INT          NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_CommitmentMonth] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CommitmentMonth_Commitment] FOREIGN KEY ([CommitmentId]) REFERENCES [TRN].[Commitment] ([Id])
);

