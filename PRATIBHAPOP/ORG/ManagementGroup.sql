CREATE TABLE [ORG].[ManagementGroup] (
    [Id]            SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Name]          VARCHAR (50)  NOT NULL,
    [Remarks]       VARCHAR (250) NULL,
    [Active]        BIT           NOT NULL,
    [Archive]       BIT           CONSTRAINT [DF_ManagementLevel_ARCHIVE] DEFAULT ((0)) NOT NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    CONSTRAINT [PK_ManagementLevel] PRIMARY KEY CLUSTERED ([Id] ASC)
);

