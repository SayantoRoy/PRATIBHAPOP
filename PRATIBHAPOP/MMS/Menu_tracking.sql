﻿CREATE TABLE [MMS].[Menu_tracking] (
    [Id]                          VARCHAR (10) NOT NULL,
    [update_scope_local_id]       INT          NULL,
    [scope_update_peer_key]       INT          NULL,
    [scope_update_peer_timestamp] BIGINT       NULL,
    [local_update_peer_key]       INT          NOT NULL,
    [local_update_peer_timestamp] ROWVERSION   NOT NULL,
    [create_scope_local_id]       INT          NULL,
    [scope_create_peer_key]       INT          NULL,
    [scope_create_peer_timestamp] BIGINT       NULL,
    [local_create_peer_key]       INT          NOT NULL,
    [local_create_peer_timestamp] BIGINT       NOT NULL,
    [sync_row_is_tombstone]       INT          NOT NULL,
    [restore_timestamp]           BIGINT       NULL,
    [last_change_datetime]        DATETIME     NULL,
    CONSTRAINT [PK_MMS.Menu_tracking] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [local_update_peer_timestamp_index]
    ON [MMS].[Menu_tracking]([local_update_peer_timestamp] ASC, [Id] ASC);

