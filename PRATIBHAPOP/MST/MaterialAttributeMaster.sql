CREATE TABLE [MST].[MaterialAttributeMaster] (
    [Id]                    NVARCHAR (10)   NOT NULL,
    [MaterialGroupMasterId] VARCHAR (10)    NOT NULL,
    [MaterialAttributeId]   VARCHAR (10)    NOT NULL,
    [Sequence]              DECIMAL (18, 2) NULL,
    [Active]                BIT             NOT NULL,
    [Archive]               BIT             NOT NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    CONSTRAINT [PK_MaterialAttributeMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialAttributeMaster_MaterialAttribute] FOREIGN KEY ([MaterialAttributeId]) REFERENCES [HKP].[MaterialAttribute] ([Id]),
    CONSTRAINT [FK_MaterialAttributeMaster_MaterialGroupMaster] FOREIGN KEY ([MaterialGroupMasterId]) REFERENCES [MST].[MaterialGroupMaster] ([Id])
);

