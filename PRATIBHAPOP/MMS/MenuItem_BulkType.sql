﻿CREATE TYPE [MMS].[MenuItem_BulkType] AS TABLE (
    [Id]                         VARCHAR (10)    NOT NULL,
    [MenuId]                     VARCHAR (10)    NULL,
    [MenuItemGroup]              VARCHAR (30)    NULL,
    [Sequence]                   DECIMAL (18, 2) NULL,
    [Code]                       VARCHAR (20)    NULL,
    [UserCode]                   VARCHAR (20)    NULL,
    [InterfaceNo]                VARCHAR (50)    NULL,
    [StandardName]               VARCHAR (50)    NULL,
    [UserName]                   VARCHAR (50)    NULL,
    [TooltipName]                VARCHAR (150)   NULL,
    [MaximumUser]                INT             NULL,
    [MaximumInactiveTime]        INT             NULL,
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
