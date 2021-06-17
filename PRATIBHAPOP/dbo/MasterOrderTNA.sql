CREATE TABLE [dbo].[MasterOrderTNA] (
    [Id]                VARCHAR (30) NOT NULL,
    [MasterOrderId]     VARCHAR (10) NULL,
    [TaskMasterId]      VARCHAR (30) NULL,
    [IsRequired]        BIT          CONSTRAINT [DF_MasterOrderTNA_IsRequired] DEFAULT ((0)) NOT NULL,
    [SequentialDate]    DATETIME     NULL,
    [TaskDependentDate] DATETIME     NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_MasterOrderTNA] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MasterOrderTNA_MasterOrder] FOREIGN KEY ([MasterOrderId]) REFERENCES [TRN].[MasterOrder] ([Id]),
    CONSTRAINT [FK_MasterOrderTNA_TaskMaster] FOREIGN KEY ([TaskMasterId]) REFERENCES [dbo].[TaskMaster] ([Id])
);

