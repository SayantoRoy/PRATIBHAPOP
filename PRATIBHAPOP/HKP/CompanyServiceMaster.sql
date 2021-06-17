CREATE TABLE [HKP].[CompanyServiceMaster] (
    [Id]              VARCHAR (12) NOT NULL,
    [CompanyId]       VARCHAR (10) NOT NULL,
    [ServiceMasterId] VARCHAR (12) NOT NULL,
    [Active]          BIT          NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyServiceMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyServiceMaster_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CompanyServiceMaster_ServiceMaster] FOREIGN KEY ([ServiceMasterId]) REFERENCES [HKP].[ServiceMaster] ([Id])
);

