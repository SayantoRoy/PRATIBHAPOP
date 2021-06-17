CREATE TABLE [MST].[MaterialMasterProcessRouting] (
    [Id]               VARCHAR (10) NOT NULL,
    [MaterialMasterId] VARCHAR (30) NOT NULL,
    [ProcessId]        VARCHAR (10) NOT NULL,
    [Active]           BIT          NOT NULL,
    [Archive]          BIT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_MaterialMasterProcessRouting] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterProcessRouting_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id])
);

