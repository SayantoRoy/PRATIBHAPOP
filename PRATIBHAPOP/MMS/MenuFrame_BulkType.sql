﻿CREATE TYPE [MMS].[MenuFrame_BulkType] AS TABLE (
    [Id]                         VARCHAR (4)     NOT NULL,
    [Sequence]                   DECIMAL (18, 2) NULL,
    [Code]                       VARCHAR (20)    NULL,
    [ShortName]                  VARCHAR (20)    NULL,
    [StandardName]               VARCHAR (100)   NULL,
    [UserName]                   VARCHAR (100)   NULL,
    [GroupName]                  VARCHAR (50)    NULL,
    [Image]                      VARCHAR (20)    NULL,
    [Description]                VARCHAR (250)   NULL,
    [Remarks]                    VARCHAR (250)   NULL,
    [Active]                     BIT             NULL,
    [Archive]                    BIT             NULL,
    [AddedBy]                    VARCHAR (30)    NULL,
    [AddedDate]                  DATETIME        NULL,
    [AddedFromIP]                VARCHAR (15)    NULL,
    [UpdatedBy]                  VARCHAR (30)    NULL,
    [UpdatedDate]                DATETIME        NULL,
    [UpdatedFromIP]              VARCHAR (15)    NULL,
    [sync_update_peer_timestamp] BIGINT          NULL,
    [sync_update_peer_key]       INT             NULL,
    [sync_create_peer_timestamp] BIGINT          NULL,
    [sync_create_peer_key]       INT             NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC));

