CREATE TABLE [dbo].[EmpServiceCategory] (
    [Id]               VARCHAR (20) NOT NULL,
    [EmpServiceTypeId] VARCHAR (20) NOT NULL,
    [Category]         VARCHAR (50) NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_EmpServiceCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmpServiceCategory_ServiceMaster] FOREIGN KEY ([EmpServiceTypeId]) REFERENCES [dbo].[EmpServiceType] ([Id])
);

