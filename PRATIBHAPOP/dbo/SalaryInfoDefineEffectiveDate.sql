CREATE TABLE [dbo].[SalaryInfoDefineEffectiveDate] (
    [SystemID]      VARCHAR (30)  NOT NULL,
    [SalaryID]      VARCHAR (30)  NULL,
    [SalaryHeadID]  VARCHAR (30)  NULL,
    [IsActive]      BIT           CONSTRAINT [DF_SalaryInfoDefineEffectiveDate_IsActive] DEFAULT ((0)) NOT NULL,
    [EffectiveDate] DATETIME      NOT NULL,
    [EndDate]       DATETIME      NULL,
    [AddedBy]       VARCHAR (100) NOT NULL,
    [DateAdded]     DATETIME      NOT NULL,
    [UpdatedBy]     VARCHAR (100) NULL,
    [DateUpdated]   DATETIME      NULL,
    CONSTRAINT [PK_SalaryInfoDefineEffectiveDate] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_SalaryInfoDefineEffectiveDate_SalaryInfoDefineMaster] FOREIGN KEY ([SalaryID]) REFERENCES [dbo].[SalaryInfoDefineMaster] ([SystemID])
);

