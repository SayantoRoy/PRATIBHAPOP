CREATE TABLE [TRN].[OperationVideoUpload] (
    [Id]             VARCHAR (30)    NOT NULL,
    [ProcessId]      VARCHAR (10)    NULL,
    [OperationId]    VARCHAR (10)    NOT NULL,
    [FileName]       VARCHAR (100)   NOT NULL,
    [Extention]      VARCHAR (5)     NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [Sequence]       DECIMAL (18, 2) NULL,
    [Active]         BIT             NOT NULL,
    [Archive]        BIT             NOT NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_OperationVideoUpload] PRIMARY KEY CLUSTERED ([Id] ASC)
);

