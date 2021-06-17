﻿CREATE TABLE [ORG].[PositionJobDescription] (
    [Id]               VARCHAR (20) NOT NULL,
    [JobDescriptionId] VARCHAR (10) NOT NULL,
    [PositionId]       VARCHAR (10) NOT NULL,
    [Active]           BIT          NOT NULL,
    [Archive]          BIT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_PositionJobDescription] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PositionJobDescription_JobDescription] FOREIGN KEY ([JobDescriptionId]) REFERENCES [HKP].[JobDescription] ([Id]),
    CONSTRAINT [FK_PositionJobDescription_Position] FOREIGN KEY ([PositionId]) REFERENCES [ORG].[Position] ([Id])
);

