﻿CREATE TABLE [HKP].[JobDescriptionDetail] (
    [Id]               VARCHAR (10)  NOT NULL,
    [JobDescriptionId] VARCHAR (10)  NOT NULL,
    [FileName]         VARCHAR (100) NOT NULL,
    [FileId]           VARCHAR (50)  NOT NULL,
    [AddedBy]          VARCHAR (30)  NOT NULL,
    [AddedDate]        DATETIME      NOT NULL,
    [AddedFromIP]      VARCHAR (15)  NOT NULL,
    [UpdatedBy]        VARCHAR (30)  NULL,
    [UpdatedDate]      DATETIME      NULL,
    [UpdatedFromIP]    VARCHAR (15)  NULL,
    CONSTRAINT [PK_JobDescriptionDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobDescriptionDetail_JobDescription] FOREIGN KEY ([JobDescriptionId]) REFERENCES [HKP].[JobDescription] ([Id])
);

