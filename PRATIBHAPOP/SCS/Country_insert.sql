CREATE PROCEDURE [SCS].[Country_insert]
	@P_1 VarChar(10),
	@P_2 VarChar(10),
	@P_3 VarChar(10),
	@P_4 Decimal(18,2),
	@P_5 VarChar(10),
	@P_6 VarChar(15),
	@P_7 VarChar(15),
	@P_8 VarChar(50),
	@P_9 VarChar(50),
	@P_10 VarChar(50),
	@P_11 Int,
	@P_12 Int,
	@P_13 VarChar(30),
	@P_14 VarChar(30),
	@P_15 Int,
	@P_16 Int,
	@P_17 Int,
	@P_18 VarChar(250),
	@P_19 VarChar(250),
	@P_20 Bit,
	@P_21 Bit,
	@P_22 VarChar(30),
	@P_23 DateTime,
	@P_24 VarChar(15),
	@P_25 VarChar(30),
	@P_26 DateTime,
	@P_27 VarChar(15),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [SCS].[Country_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [SCS].[Country]([Id], [ContinentId], [CurrencyId], [Sequence], [ICC], [Code], [ShortName], [StandardName], [UserName], [Nationality], [GMTMinute], [GMTHour], [TINCaption], [NIDCaption], [PhoneLength], [NIDLength], [TINLength], [Description], [Remarks], [Active], [Archive], [AddedBy], [AddedDate], [AddedFromIP], [UpdatedBy], [UpdatedDate], [UpdatedFromIP]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16, @P_17, @P_18, @P_19, @P_20, @P_21, @P_22, @P_23, @P_24, @P_25, @P_26, @P_27);  SET @sync_row_count = @@rowcount;  END 
END
