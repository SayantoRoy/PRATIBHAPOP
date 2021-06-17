CREATE TABLE [TRN].[GRNRejectionDetails] (
    [Id]              VARCHAR (50)     NOT NULL,
    [GRNDeailsId]     VARCHAR (50)     NULL,
    [RejectionQty]    DECIMAL (20, 10) CONSTRAINT [DF_Table_1_BaseIssueQty1] DEFAULT ((0)) NOT NULL,
    [RejectionUoMId]  VARCHAR (10)     NOT NULL,
    [BaseUOMId]       VARCHAR (10)     NULL,
    [BaseUoMFactor]   DECIMAL (18, 10) NOT NULL,
    [RejectionRate]   DECIMAL (18, 10) NOT NULL,
    [RejeactionValue] DECIMAL (18, 10) NOT NULL,
    [AddedBy]         VARCHAR (30)     NOT NULL,
    [AddedDate]       DATETIME         NOT NULL,
    [AddedFromIP]     VARCHAR (15)     NOT NULL,
    [UpdatedBy]       VARCHAR (30)     NULL,
    [UpdatedDate]     DATETIME         NULL,
    [UpdatedFromIP]   VARCHAR (15)     NULL,
    CONSTRAINT [PK_GRNRejectionDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

