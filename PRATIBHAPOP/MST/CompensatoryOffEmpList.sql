CREATE TABLE [MST].[CompensatoryOffEmpList] (
    [Id]                VARCHAR (10) NOT NULL,
    [CompensatoryOffId] VARCHAR (10) NOT NULL,
    [EmpSystemId]       VARCHAR (30) NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_CompensatoryOffEmpList] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompensatoryOffEmpList_CompensatoryOff] FOREIGN KEY ([CompensatoryOffId]) REFERENCES [MST].[CompensatoryOff] ([Id]),
    CONSTRAINT [FK_CompensatoryOffEmpList_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

