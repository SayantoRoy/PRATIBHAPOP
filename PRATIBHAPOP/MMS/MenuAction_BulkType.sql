CREATE TYPE [MMS].[MenuAction_BulkType] AS TABLE (
    [Id]                         VARCHAR (50)  NOT NULL,
    [MenuId]                     VARCHAR (10)  NULL,
    [Action]                     VARCHAR (80)  NULL,
    [UserName]                   VARCHAR (80)  NULL,
    [Description]                VARCHAR (250) NULL,
    [Active]                     BIT           NULL,
    [Archive]                    BIT           NULL,
    [sync_update_peer_timestamp] BIGINT        NULL,
    [sync_update_peer_key]       INT           NULL,
    [sync_create_peer_timestamp] BIGINT        NULL,
    [sync_create_peer_key]       INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC));

