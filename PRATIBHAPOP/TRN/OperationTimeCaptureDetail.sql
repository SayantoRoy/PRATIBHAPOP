CREATE TABLE [TRN].[OperationTimeCaptureDetail] (
    [Id]                           VARCHAR (20)    NOT NULL,
    [StepId]                       VARCHAR (10)    NULL,
    [OperationTimeCaptureMasterId] VARCHAR (20)    NULL,
    [Sequence]                     DECIMAL (18, 2) NULL,
    [Cycle]                        INT             NULL,
    [StartTime]                    DECIMAL (18, 3) NULL,
    [EndTime]                      DECIMAL (18, 3) NOT NULL,
    [UserDefinedStepCode]          VARCHAR (100)   NULL,
    [ThirdPartyCodeId]             VARCHAR (10)    NULL,
    [Active]                       BIT             NOT NULL,
    [Archive]                      BIT             NOT NULL,
    [AddedBy]                      VARCHAR (30)    NOT NULL,
    [AddedDate]                    DATETIME        NOT NULL,
    [AddedFromIP]                  VARCHAR (15)    NOT NULL,
    [UpdatedBy]                    VARCHAR (30)    NULL,
    [UpdatedDate]                  DATETIME        NULL,
    [UpdatedFromIP]                VARCHAR (15)    NULL,
    [VASVersion]                   INT             NOT NULL,
    CONSTRAINT [PK_OperationTimeCaptureDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OperationTimeCaptureDetail_OperationTimeCaptureMaster] FOREIGN KEY ([OperationTimeCaptureMasterId]) REFERENCES [TRN].[OperationTimeCaptureMaster] ([Id])
);

