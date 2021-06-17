CREATE TABLE [dbo].[OTSlabDefineGeneral] (
    [SystemID]                     VARCHAR (30)    NOT NULL,
    [GroupID]                      VARCHAR (10)    NULL,
    [PlantID]                      VARCHAR (10)    NULL,
    [DayType]                      VARCHAR (5)     NULL,
    [FromDate]                     DATETIME        NULL,
    [ToDate]                       DATETIME        NULL,
    [firstSlab]                    DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [IsOTExtentNextSlab]           BIT             DEFAULT ((0)) NOT NULL,
    [IsTotalWorkTimeAsOT]          BIT             DEFAULT ((0)) NOT NULL,
    [AddedBy]                      VARCHAR (100)   NULL,
    [DateAdded]                    DATETIME        NULL,
    [UpdatedBy]                    VARCHAR (100)   NULL,
    [DateUpdated]                  DATETIME        NULL,
    [IsMandatoryAlignWithSalary]   BIT             DEFAULT ((0)) NOT NULL,
    [IsTotalWorkTimeAsOTFromShift] BIT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_OTSlabDefineGeneral] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_OTSlabDefineGeneral_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_OTSlabDefineGeneral_DayType] FOREIGN KEY ([DayType]) REFERENCES [dbo].[DayType] ([DayType]),
    CONSTRAINT [FK_OTSlabDefineGeneral_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

