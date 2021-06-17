CREATE TABLE [SCS].[UnitOfMeasurement] (
    [Id]              VARCHAR (10)    NOT NULL,
    [UOMDId]          VARCHAR (10)    NOT NULL,
    [Sequence]        DECIMAL (18, 2) NOT NULL,
    [Code]            VARCHAR (15)    NOT NULL,
    [ShortName]       VARCHAR (15)    NULL,
    [StandardName]    VARCHAR (50)    NULL,
    [UserName]        VARCHAR (50)    NOT NULL,
    [IsComercialUnit] BIT             NOT NULL,
    [Description]     VARCHAR (250)   NULL,
    [Remarks]         VARCHAR (250)   NULL,
    [Active]          BIT             NOT NULL,
    [Archive]         BIT             CONSTRAINT [DF_UnitOfMeasurement_ARCHIVE] DEFAULT ((0)) NOT NULL,
    [AddedBy]         VARCHAR (30)    NOT NULL,
    [AddedDate]       DATETIME        NOT NULL,
    [AddedFromIP]     VARCHAR (15)    NOT NULL,
    [UpdatedBy]       VARCHAR (30)    NULL,
    [UpdatedDate]     DATETIME        NULL,
    [UpdatedFromIP]   VARCHAR (15)    NULL,
    CONSTRAINT [PK_UnitOfMeasurement] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UnitOfMeasurement_UOMDimension] FOREIGN KEY ([UOMDId]) REFERENCES [SCS].[UOMDimension] ([Id])
);

