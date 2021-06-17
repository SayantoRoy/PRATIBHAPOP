CREATE TABLE [MST].[ContactMasterPlant] (
    [Id]              VARCHAR (50) NOT NULL,
    [ContactMasterId] VARCHAR (20) NOT NULL,
    [PlantId]         VARCHAR (10) NOT NULL,
    [Active]          BIT          NOT NULL,
    [Archive]         BIT          NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_ContactMasterPlant] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ContactMasterPlant_ContactMaster] FOREIGN KEY ([ContactMasterId]) REFERENCES [MST].[ContactMaster] ([Id]),
    CONSTRAINT [FK_ContactMasterPlant_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

