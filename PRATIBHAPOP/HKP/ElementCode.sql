﻿CREATE TABLE [HKP].[ElementCode] (
    [Id]               INT           IDENTITY (1, 1) NOT NULL,
    [Code]             VARCHAR (100) NOT NULL,
    [ShortName]        VARCHAR (100) NULL,
    [StandardName]     VARCHAR (100) NULL,
    [UserName]         VARCHAR (100) NULL,
    [Activity]         VARCHAR (150) NULL,
    [Element]          VARCHAR (150) NULL,
    [Description]      VARCHAR (500) NOT NULL,
    [TMU]              VARCHAR (50)  NOT NULL,
    [MCHand]           VARCHAR (50)  NULL,
    [CodeType]         VARCHAR (50)  NOT NULL,
    [SPI]              VARCHAR (50)  NULL,
    [RPM]              VARCHAR (50)  NULL,
    [LengthInCM]       VARCHAR (50)  NULL,
    [Frequency]        VARCHAR (50)  NULL,
    [CycleTime]        VARCHAR (50)  NULL,
    [AddedBy]          VARCHAR (30)  NOT NULL,
    [AddedDate]        DATETIME      NOT NULL,
    [AddedFromIP]      VARCHAR (15)  NOT NULL,
    [UpdatedBy]        VARCHAR (30)  NULL,
    [UpdatedDate]      DATETIME      NULL,
    [UpdatedFromIP]    VARCHAR (15)  NULL,
    [NoOfStart]        INT           NULL,
    [NoOfStop]         INT           NULL,
    [StopAccuracyId]   VARCHAR (30)  NULL,
    [HandlingFactorId] VARCHAR (30)  NULL,
    CONSTRAINT [PK_GSD] PRIMARY KEY CLUSTERED ([Id] ASC)
);

