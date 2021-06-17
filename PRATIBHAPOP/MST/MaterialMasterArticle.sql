CREATE TABLE [MST].[MaterialMasterArticle] (
    [Id]               VARCHAR (10)    NOT NULL,
    [MaterialMasterId] VARCHAR (30)    NOT NULL,
    [Code]             VARCHAR (200)   NULL,
    [ShortName]        VARCHAR (200)   NULL,
    [StandardName]     VARCHAR (200)   NULL,
    [AddedBy]          VARCHAR (30)    NOT NULL,
    [AddedDate]        DATETIME        NOT NULL,
    [AddedFromIP]      VARCHAR (15)    NOT NULL,
    [UpdatedBy]        VARCHAR (30)    NULL,
    [UpdatedDate]      DATETIME        NULL,
    [UpdatedFromIP]    VARCHAR (15)    NULL,
    [MaterialWeight]   DECIMAL (18, 2) CONSTRAINT [DF_MaterialMasterArticle_MaterialWeight] DEFAULT ((0)) NULL,
    [RPM]              INT             NOT NULL,
    [MachineAllowance] DECIMAL (18, 2) NOT NULL,
    [StitchCodeId]     VARCHAR (10)    NULL,
    [MachineMasterId]  VARCHAR (10)    NULL,
    CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterArticle_MachineMaster] FOREIGN KEY ([MachineMasterId]) REFERENCES [MST].[MachineMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterArticle_StitchCode] FOREIGN KEY ([StitchCodeId]) REFERENCES [HKP].[StitchCode] ([Id])
);

