﻿CREATE TABLE [MST].[FarmerMaster] (
    [Id]                      VARCHAR (20)    NOT NULL,
    [Date]                    DATETIME        NOT NULL,
    [Reference]               VARCHAR (30)    NULL,
    [FarmerRegistrationID]    VARCHAR (30)    NOT NULL,
    [FarmerRegistrationDate]  DATETIME        NULL,
    [FarmerName]              VARCHAR (50)    NOT NULL,
    [FarmerFatherHusbandName] VARCHAR (50)    NOT NULL,
    [Gender]                  VARCHAR (10)    NOT NULL,
    [NationalID]              VARCHAR (30)    NULL,
    [MobileNo]                DECIMAL (18, 2) NULL,
    [Address1]                VARCHAR (250)   NOT NULL,
    [Address2]                VARCHAR (250)   NULL,
    [VillageId]               VARCHAR (20)    NOT NULL,
    [TalukaId]                VARCHAR (20)    NULL,
    [DistrictId]              VARCHAR (10)    NOT NULL,
    [StateId]                 VARCHAR (10)    NOT NULL,
    [Pincode]                 DECIMAL (10, 2) NULL,
    [UOMId]                   VARCHAR (10)    NOT NULL,
    [TotalArea]               DECIMAL (18, 2) NOT NULL,
    [ResponsiblePersonId]     VARCHAR (30)    NULL,
    [DebitGLCode]             VARCHAR (50)    NULL,
    [CreditGLCode]            VARCHAR (50)    NULL,
    [Remarks]                 VARCHAR (250)   NULL,
    [Active]                  BIT             NOT NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    [BankName]                VARCHAR (100)   DEFAULT ((0)) NOT NULL,
    [AccountNo]               DECIMAL (38, 2) DEFAULT ((0)) NOT NULL,
    [IFSCCode]                VARCHAR (50)    DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_FarmerMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FarmerMaster_District] FOREIGN KEY ([DistrictId]) REFERENCES [SCS].[District] ([Id]),
    CONSTRAINT [FK_FarmerMaster_ResponsiblePerson] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_FarmerMaster_State] FOREIGN KEY ([StateId]) REFERENCES [SCS].[State] ([Id]),
    CONSTRAINT [FK_FarmerMaster_Taluka] FOREIGN KEY ([TalukaId]) REFERENCES [HKP].[Taluk] ([Id]),
    CONSTRAINT [FK_FarmerMaster_UOMId] FOREIGN KEY ([UOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_FarmerMaster_Village] FOREIGN KEY ([VillageId]) REFERENCES [HKP].[Village] ([Id])
);

