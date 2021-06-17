CREATE TABLE [dbo].[EmpServiceType] (
    [Id]            VARCHAR (20) NOT NULL,
    [Service]       VARCHAR (50) NOT NULL,
    [Form]          VARCHAR (20) NOT NULL,
    [UOMId]         VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    [SalaryHeadId]  VARCHAR (30) NULL,
    CONSTRAINT [PK_EmpServiceType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmpServiceType_SalaryHead] FOREIGN KEY ([SalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_EmpServiceType_UOMId] FOREIGN KEY ([UOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

