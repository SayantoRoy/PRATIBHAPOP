CREATE TABLE [TRN].[ServiceRequsitionDetail] (
    [Id]                              VARCHAR (10)     NOT NULL,
    [ServiceRequisitionMasterID]      VARCHAR (10)     NULL,
    [CurrencyId]                      VARCHAR (10)     NULL,
    [Rate]                            DECIMAL (20, 2)  NULL,
    [ServiceMasterId]                 VARCHAR (12)     NOT NULL,
    [TotalServiceTranAmount]          DECIMAL (18, 10) NOT NULL,
    [TotalServiceBooksCurrencyAmount] DECIMAL (18, 10) NOT NULL,
    [AddedBy]                         VARCHAR (30)     NULL,
    [AddedDate]                       DATETIME         NOT NULL,
    [AddedFromIP]                     VARCHAR (15)     NULL,
    [UpdatedBy]                       VARCHAR (30)     NULL,
    [UpdatedDate]                     DATETIME         NULL,
    [UpdatedFromIP]                   VARCHAR (15)     NULL,
    [Remarks]                         VARCHAR (500)    NULL,
    [RefferenceNo]                    VARCHAR (1000)   NULL,
    CONSTRAINT [PK_ServiceRequsitionDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Fk_CurrencyT] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [Fk_ServiceID] FOREIGN KEY ([ServiceMasterId]) REFERENCES [HKP].[ServiceMaster] ([Id]),
    CONSTRAINT [fk_ServiceReqMasterID] FOREIGN KEY ([ServiceRequisitionMasterID]) REFERENCES [TRN].[ServiceRequsitionMaster] ([Id])
);

