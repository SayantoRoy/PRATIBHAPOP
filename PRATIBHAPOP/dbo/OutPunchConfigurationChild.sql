CREATE TABLE [dbo].[OutPunchConfigurationChild] (
    [Id]            VARCHAR (20)    NOT NULL,
    [Sequence]      DECIMAL (18, 2) NOT NULL,
    [MasterId]      VARCHAR (20)    NOT NULL,
    [InPunchLimit]  DATETIME        NOT NULL,
    [OutPunchLimit] DATETIME        NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_OutPunchConfigurationChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OutPunchConfigurationChild_MasterId] FOREIGN KEY ([MasterId]) REFERENCES [dbo].[OutPunchConfigurationHeader] ([Id])
);

