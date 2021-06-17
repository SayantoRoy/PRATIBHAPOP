CREATE TABLE [MST].[ProjectPlanningRequisition] (
    [Id]                VARCHAR (10)    NOT NULL,
    [ProjectPlanningId] VARCHAR (10)    NULL,
    [PartyId]           VARCHAR (10)    NULL,
    [ExchangeRate]      DECIMAL (18, 4) NULL,
    [RequisitionDate]   DATETIME        NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    [Description]       VARCHAR (250)   NULL,
    CONSTRAINT [PK__ProjectPlanningRequisition] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProjectPlanningRequisition_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_ProjectPlanningRequisition_ProjectPlanning] FOREIGN KEY ([ProjectPlanningId]) REFERENCES [MST].[ProjectPlanning] ([Id])
);

