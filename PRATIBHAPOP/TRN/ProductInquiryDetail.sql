CREATE TABLE [TRN].[ProductInquiryDetail] (
    [Id]                       VARCHAR (10) NOT NULL,
    [ProductionProcessGroupId] VARCHAR (10) NOT NULL,
    [EntityId]                 VARCHAR (10) NOT NULL,
    [ProductInquiryId]         VARCHAR (10) NOT NULL,
    [JobWorkApplicable]        BIT          NOT NULL,
    [JobWorkType]              VARCHAR (50) NULL,
    [InternalEntityId]         VARCHAR (10) NULL,
    [VendorId]                 VARCHAR (10) NULL,
    [AddedBy]                  VARCHAR (30) NOT NULL,
    [AddedDate]                DATETIME     NOT NULL,
    [AddedFromIP]              VARCHAR (15) NOT NULL,
    [UpdatedBy]                VARCHAR (30) NULL,
    [UpdatedDate]              DATETIME     NULL,
    [UpdatedFromIP]            VARCHAR (15) NULL,
    CONSTRAINT [PK_ProductInquiryDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductInquiryDetail_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_ProductInquiryDetail_Entity_EntityIdWithInGroup] FOREIGN KEY ([InternalEntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_ProductInquiryDetail_Party] FOREIGN KEY ([VendorId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_ProductInquiryDetail_ProductInquiry] FOREIGN KEY ([ProductInquiryId]) REFERENCES [TRN].[ProductInquiry] ([Id]),
    CONSTRAINT [FK_ProductInquiryDetail_ProductionProcessGroup] FOREIGN KEY ([ProductionProcessGroupId]) REFERENCES [HKP].[ProductionProcessGroup] ([Id])
);

