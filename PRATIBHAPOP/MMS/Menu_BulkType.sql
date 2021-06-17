CREATE TYPE [MMS].[Menu_BulkType] AS TABLE (
    [Id]                         VARCHAR (10)   NOT NULL,
    [Area]                       VARCHAR (50)   NULL,
    [UserName]                   VARCHAR (100)  NULL,
    [Controller]                 VARCHAR (80)   NULL,
    [Href]                       VARCHAR (150)  NULL,
    [IFCodes]                    VARCHAR (3000) NULL,
    [Description]                VARCHAR (250)  NULL,
    [Active]                     BIT            NULL,
    [Archive]                    BIT            NULL,
    [sync_update_peer_timestamp] BIGINT         NULL,
    [sync_update_peer_key]       INT            NULL,
    [sync_create_peer_timestamp] BIGINT         NULL,
    [sync_create_peer_key]       INT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC));

