CREATE TABLE [dbo].[TnALog] (
    [Id]            INT          IDENTITY (1, 1) NOT NULL,
    [MasterOrderId] VARCHAR (10) NULL,
    [AddedBy]       VARCHAR (30) NULL,
    [AddedDate]     DATETIME     NULL,
    [AddedFromIP]   VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

