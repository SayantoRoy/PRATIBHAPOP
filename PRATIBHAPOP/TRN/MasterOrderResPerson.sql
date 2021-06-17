CREATE TABLE [TRN].[MasterOrderResPerson] (
    [Id]                           VARCHAR (10) NOT NULL,
    [MasterOrderId]                VARCHAR (10) NOT NULL,
    [OrderResponsibleDepartmentId] INT          NOT NULL,
    [OurRespnsiblePersonId]        VARCHAR (30) NOT NULL,
    [PartyRespnsiblePersonId]      VARCHAR (30) NULL,
    [AddedBy]                      VARCHAR (30) NOT NULL,
    [AddedDate]                    DATETIME     NOT NULL,
    [AddedFromIP]                  VARCHAR (15) NOT NULL,
    [UpdatedBy]                    VARCHAR (30) NULL,
    [UpdatedDate]                  DATETIME     NULL,
    [UpdatedFromIP]                VARCHAR (15) NULL,
    CONSTRAINT [PK_MasterOrderResPerson] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MasterOrderResPerson_EmployeeInformation] FOREIGN KEY ([OurRespnsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_MasterOrderResPerson_MasterOrder] FOREIGN KEY ([MasterOrderId]) REFERENCES [TRN].[MasterOrder] ([Id]),
    CONSTRAINT [FK_MasterOrderResPerson_OrderResponsibleDepartment] FOREIGN KEY ([OrderResponsibleDepartmentId]) REFERENCES [MST].[OrderResponsibleDepartment] ([Id])
);

