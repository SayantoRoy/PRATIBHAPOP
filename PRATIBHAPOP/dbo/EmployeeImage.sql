CREATE TABLE [dbo].[EmployeeImage] (
    [SystemID]    VARCHAR (30)  NOT NULL,
    [EmpSystemID] VARCHAR (30)  NOT NULL,
    [EmpImage]    IMAGE         NULL,
    [ImgType]     VARCHAR (50)  NULL,
    [AddedBy]     VARCHAR (100) NOT NULL,
    [DateAdded]   DATETIME      NOT NULL,
    [UpdatedBy]   VARCHAR (100) NULL,
    [DateUpdated] DATETIME      NULL,
    CONSTRAINT [PK_EmployeeImage_1] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_EmployeeImage_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

