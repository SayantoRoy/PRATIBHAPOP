CREATE TABLE [TRN].[CommitmentInquiry] (
    [Id]            VARCHAR (10) NOT NULL,
    [CommitmentId]  VARCHAR (10) NOT NULL,
    [InquiryId]     VARCHAR (10) NOT NULL,
    [EntityId]      VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_CommitmentInquiry] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CommitmentInquiry_Commitment] FOREIGN KEY ([CommitmentId]) REFERENCES [TRN].[Commitment] ([Id]),
    CONSTRAINT [FK_CommitmentInquiry_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_CommitmentInquiry_Inquiry] FOREIGN KEY ([InquiryId]) REFERENCES [TRN].[Inquiry] ([Id])
);

