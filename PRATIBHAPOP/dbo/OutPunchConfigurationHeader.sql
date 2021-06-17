CREATE TABLE [dbo].[OutPunchConfigurationHeader] (
    [Id]               VARCHAR (20)    NOT NULL,
    [Sequence]         DECIMAL (18, 2) NOT NULL,
    [Code]             VARCHAR (10)    NOT NULL,
    [ShortName]        VARCHAR (15)    NOT NULL,
    [StandardName]     VARCHAR (50)    NOT NULL,
    [UserName]         VARCHAR (50)    NOT NULL,
    [Description]      VARCHAR (250)   NULL,
    [Remarks]          VARCHAR (250)   NULL,
    [Active]           BIT             NOT NULL,
    [InPunchStartTime] DATETIME        NOT NULL,
    [LastPunchOutTime] DATETIME        NOT NULL,
    [AddedBy]          VARCHAR (30)    NOT NULL,
    [AddedDate]        DATETIME        NOT NULL,
    [AddedFromIP]      VARCHAR (15)    NOT NULL,
    [UpdatedBy]        VARCHAR (30)    NULL,
    [UpdatedDate]      DATETIME        NULL,
    [UpdatedFromIP]    VARCHAR (15)    NULL,
    [PlantId]          VARCHAR (10)    NOT NULL,
    CONSTRAINT [PK_OutPunchConfigurationHeader] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OutPunchConfigurationHeader_PlantId] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

