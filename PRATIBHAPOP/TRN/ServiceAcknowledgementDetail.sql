CREATE TABLE [TRN].[ServiceAcknowledgementDetail] (
    [Id]                             VARCHAR (10)     NOT NULL,
    [ServiceAcknowledgementMasterId] VARCHAR (30)     NOT NULL,
    [ServiceMasterId]                VARCHAR (12)     NOT NULL,
    [ServicePOMasterId]              VARCHAR (10)     NOT NULL,
    [ServicePODetailId]              VARCHAR (10)     NOT NULL,
    [Amount]                         DECIMAL (18, 10) NOT NULL,
    [TotalTaxAmount]                 DECIMAL (18, 10) NOT NULL,
    [AddedBy]                        VARCHAR (30)     NOT NULL,
    [AddedDate]                      DATETIME         NOT NULL,
    [AddedFromIP]                    VARCHAR (15)     NOT NULL,
    [UpdatedBy]                      VARCHAR (30)     NULL,
    [UpdatedDate]                    DATETIME         NULL,
    [UpdatedFromIP]                  VARCHAR (15)     NULL,
    [TotalAmount]                    DECIMAL (18, 10) NULL,
    CONSTRAINT [PK_ServiceAcknowledgementDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_ServiceAcknowledgementDetail] FOREIGN KEY ([ServiceMasterId]) REFERENCES [HKP].[ServiceMaster] ([Id]),
    CONSTRAINT [fk_ServicePOMaster] FOREIGN KEY ([ServicePOMasterId]) REFERENCES [TRN].[ServicePOMaster] ([Id])
);

