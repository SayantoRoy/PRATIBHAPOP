CREATE TABLE [dbo].[MandatoryField] (
    [ScreenName]  VARCHAR (100) NOT NULL,
    [FieldName]   VARCHAR (100) NOT NULL,
    [IsMandatory] BIT           CONSTRAINT [DF_tblMandatoryField_IsMendatory] DEFAULT ((1)) NOT NULL,
    [GroupID]     VARCHAR (10)  NULL,
    [PlantID]     VARCHAR (10)  NOT NULL,
    [AddedBy]     VARCHAR (100) NULL,
    [DateAdded]   DATETIME      NULL,
    [UpdatedBy]   VARCHAR (100) NULL,
    [DateUpdated] DATETIME      NULL,
    CONSTRAINT [PK_MandatoryField] PRIMARY KEY CLUSTERED ([ScreenName] ASC, [FieldName] ASC, [PlantID] ASC),
    CONSTRAINT [FK_MandatoryField_CompanyGrou] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_MandatoryField_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

