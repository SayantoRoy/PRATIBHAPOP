CREATE TABLE [MST].[AddressMaster] (
    [Id]            VARCHAR (20)  NOT NULL,
    [ContinentId]   VARCHAR (10)  NOT NULL,
    [CountryId]     VARCHAR (10)  NOT NULL,
    [StateId]       VARCHAR (10)  NOT NULL,
    [CityId]        VARCHAR (10)  NULL,
    [AreaId]        VARCHAR (10)  NULL,
    [Thana]         VARCHAR (50)  NULL,
    [Circle]        VARCHAR (50)  NULL,
    [Ward]          VARCHAR (50)  NULL,
    [Village]       VARCHAR (100) NULL,
    [Address1]      VARCHAR (300) NOT NULL,
    [Address2]      VARCHAR (300) NULL,
    [Address3]      VARCHAR (300) NULL,
    [Postcode]      VARCHAR (50)  NULL,
    [Phone]         VARCHAR (20)  NULL,
    [Email]         VARCHAR (80)  NULL,
    [Website]       VARCHAR (50)  NULL,
    [Active]        BIT           NOT NULL,
    [Archive]       BIT           NOT NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    [DistrictId]    VARCHAR (10)  NULL,
    CONSTRAINT [PK_AddressMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AddressMaster_Area] FOREIGN KEY ([AreaId]) REFERENCES [SCS].[Area] ([Id]),
    CONSTRAINT [FK_AddressMaster_City] FOREIGN KEY ([CityId]) REFERENCES [SCS].[City] ([Id]),
    CONSTRAINT [FK_AddressMaster_Continent] FOREIGN KEY ([ContinentId]) REFERENCES [SCS].[Continent] ([Id]),
    CONSTRAINT [FK_AddressMaster_Country] FOREIGN KEY ([CountryId]) REFERENCES [SCS].[Country] ([Id]),
    CONSTRAINT [FK_AddressMaster_District] FOREIGN KEY ([DistrictId]) REFERENCES [SCS].[District] ([Id]),
    CONSTRAINT [FK_AddressMaster_State] FOREIGN KEY ([StateId]) REFERENCES [SCS].[State] ([Id])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'State/Division', @level0type = N'SCHEMA', @level0name = N'MST', @level1type = N'TABLE', @level1name = N'AddressMaster', @level2type = N'COLUMN', @level2name = N'StateId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'City/District', @level0type = N'SCHEMA', @level0name = N'MST', @level1type = N'TABLE', @level1name = N'AddressMaster', @level2type = N'COLUMN', @level2name = N'CityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Upzila/Thana', @level0type = N'SCHEMA', @level0name = N'MST', @level1type = N'TABLE', @level1name = N'AddressMaster', @level2type = N'COLUMN', @level2name = N'Thana';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Union/Circle', @level0type = N'SCHEMA', @level0name = N'MST', @level1type = N'TABLE', @level1name = N'AddressMaster', @level2type = N'COLUMN', @level2name = N'Circle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Village/Road/Lane', @level0type = N'SCHEMA', @level0name = N'MST', @level1type = N'TABLE', @level1name = N'AddressMaster', @level2type = N'COLUMN', @level2name = N'Village';

