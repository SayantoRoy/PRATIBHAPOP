CREATE TABLE [dbo].[MaterialSetting] (
    [Id]                   VARCHAR (20) NOT NULL,
    [Type]                 VARCHAR (15) NULL,
    [TypeValue]            VARCHAR (15) NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    [MaterialMasterTypeId] VARCHAR (20) NULL,
    CONSTRAINT [PK_MaterialSetting] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialSetting_MaterialMasterType] FOREIGN KEY ([MaterialMasterTypeId]) REFERENCES [HKP].[MaterialMasterType] ([Id])
);

